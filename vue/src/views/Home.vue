<template>
  <div>
    <el-row :span="10" style="margin-bottom: 60px">
      <el-col :span="6">
          <el-card style="color: #409EFF">
              <div ><i class="el-icon-user-solid"></i> 用户总数</div>
              <div style="padding: 10px 0;text-align: center;font-weight: bold">
                100
              </div>
          </el-card>
      </el-col>
      <el-col :span="6">
        <el-card style="color: #403EFF">
          <div > <i class="el-icon-money"></i> 销售总量</div>
          <div style="padding: 10px 0;text-align: center;font-weight: bold">
            $ 10000000
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card style="color: #F56C6C">
          <div ><i class="el-icon-coin"></i> 收益总额</div>
          <div style="padding: 10px 0;text-align: center;font-weight: bold">
            $ 300000
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card  style="color: #E6A23C">
          <div><i class="el-icon-shopping-cart-1"></i> 门店总数</div>
          <div style="padding: 10px 0;text-align: center;font-weight: bold">
            100
          </div>
        </el-card>
      </el-col>
    </el-row>

    <el-row >
      <el-col :span="12">
        <div id="main" style="width: 500px;height: 450px"></div>
      </el-col>
      <el-col :span="12">
        <div id="pie" style="width: 500px;height: 450px"></div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import * as echarts from "echarts"

export default {
  name:"Home",
  data(){
    return{

    }
  },
  mounted() { // 页面元素渲染之后再触发

    var option;

    option = {
      title: {
        text: '各季度会员数量统计',
        subtext: '趋势图',
        left: 'center'
      },
      tooltip: {
        trigger: 'item'
      },
      legend: {
        orient: 'vertical',
        left:'left'
      },
      xAxis: {
        type: 'category',
        data: ['第一季度', '第二季度', '第三季度', '第四季度']
      },
      yAxis: {
        type: 'value'
      },
      series: [
        {
          name:'蜜雪冰城',
          data: [],
          type: 'line'
        },
        {
          name:'蜜雪冰城',
          data: [],
          type: 'bar'
        },
        {
          name:'古茗',
          data: [],
          type: 'line'
        },
        {
          name:'古茗',
          data: [],
          type: 'bar'
        }
      ]
    };


    // 饼图

    var  pieOption = {
      title: {
        text: '各季度会员数量统计',
        subtext: '比例图',
        left: 'center'
      },
      tooltip: {
        trigger: 'item'
      },
      legend: {
        orient: 'vertical',
        left: 'left'
      },
      series: [
        {
          name:'蜜雪冰城',
          type: 'pie',
          radius: '50%',
          center:['25%','70%'],
          data: [], // 填空
          emphasis: {
            itemStyle: {
              shadowBlur: 10,
              shadowOffsetX: 0,
              shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
          }
        },
        {
          name:'古茗',
          type: 'pie',
          radius: '50%',
          center:['75%','50%'],
          data: [
            {name:"第一季度",value:2},
            {name:"第二季度",value:3},
            {name:"第三季度",value:4},
            {name:"第四季度",value:5},
          ], // 填空
          emphasis: {
            itemStyle: {
              shadowBlur: 10,
              shadowOffsetX: 0,
              shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
          }
        }
      ]
    };

    var chartDom = document.getElementById('main');
    var myChart = echarts.init(chartDom);


    var pieDom = document.getElementById('pie');
    var pieChart = echarts.init(pieDom);

    this.request.get("echarts/members").then(res =>{
      // 填空
      // option.xAxis.data =res.data.x
      option.series[0].data = res.data
      option.series[1].data = res.data
      option.series[2].data = [9,4,10,8]
      option.series[3].data = [9,4,10,8]
      // 在数据准备完毕之后再set
      myChart.setOption(option);

      pieOption.series[0].data=[
        {name:"第一季度",value:res.data[0]},
        {name:"第二季度",value:res.data[1]},
        {name:"第三季度",value:res.data[2]},
        {name:"第四季度",value:res.data[3]},
      ]

      pieChart.setOption(pieOption)
    })


  }
}

</script>

<style scoped>

</style>