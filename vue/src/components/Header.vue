<template>
  <div style="font-size: 12px;line-height: 60px;display: flex">
    <div style="flex: 1; ">
      <span :class="collapseBtnClass" style="cursor: pointer;font-size: 18px" @click="collapse"></span>
      <el-breadcrumb separator="/" style="display: inline-block; margin-left: 10px">
        <el-breadcrumb-item :to="'/'">首页</el-breadcrumb-item>
        <el-breadcrumb-item>首页</el-breadcrumb-item>
      </el-breadcrumb>
    </div>
    <el-dropdown style="width: 100px;cursor: pointer">
      <div style="display: inline-block">
          <img :src="user.avatarUrl" alt=""
              style="width: 30px;border-radius: 50%;position: relative;top: 10px;right: 5px">
        <span>{{ user.nickname }} <i class="el-icon-arrow-down" style="margin-left: 5px"></i> </span>

      </div>
      <el-dropdown-menu slot="dropdown">
        <router-link to="/person" style="text-decoration: none">
        <el-dropdown-item >
          个人信息
        </el-dropdown-item>
        </router-link>
        <span style="text-decoration: none" @click="logout">
          <el-dropdown-item>
            退出
          </el-dropdown-item>
        </span>
      </el-dropdown-menu>
    </el-dropdown>
  </div>
</template>

<script>
export default {
  name:'Header',
  data(){
    return{
      user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")):{}
    }
  },
  methods:{
    logout(){
      this.$router.push("login")
      localStorage.removeItem("user")
      this.$message.success("退出成功")
    }
  },
  props:{
    collapseBtnClass:String,
    collapse:{type:Function},
  },
  created() {
    console.log(this.$route)
  },
}
</script>

<style scoped>

</style>