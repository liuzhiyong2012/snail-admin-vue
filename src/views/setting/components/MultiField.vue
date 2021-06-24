<template>
  <div class="multi-field-ctn">
          <el-button class="add-btn" type="primary" @click="addItem()">添加</el-button>
          <div class="file-list-ctn">
              <div class="item-ctn" v-for="(item,index) in value" :key="index">
                <!-- <i class="icon el-icon-error" /> -->
                <span class="number-ctn">{{index + 1}}</span>
                <el-input class="name-ctn" v-model="item.name" :placeholder="conf.nameHolder" style="width: 200px" />
                <el-input v-show="!conf.hideValue" class="value-ctn" v-model="item.value" :placeholder="conf.valueHolder" style="width: 200px" />
                <span class="del-btn" @click="deleteItem(index,item)">删除</span>
              </div>
          </div>

  </div>
</template>


<script>
// import AppBanner from './AppBanner.vue';

export default {
  components:{

  },
  name: 'MultiField',
  props: {
    conf:{
        type:Object,
        defalut(){
          return {
            hideValue:true,
            nameHolder:'请输入名称',
            valueHolder:'请输入值'
          };
        }

    },
    value: {
      type:Array,
      default(){
        return [{
          name:'我是name1',
          value:'我是value1'
        },
        {
          name:'我是name1',
          value:'我是value1'
        },
        {
          name:'我是name1',
          value:'我是value1'
        },
        {
          name:'我是name1',
          value:'我是value1'
        }];
      }
    }
  },
  created(){

  },
  methods:{
    deleteItem(index,item){
      let tempArr = JSON.parse(JSON.stringify(this.value));
      tempArr.splice(index,1);
      this.$emit('input',tempArr);

    },
    addItem(){
         let tempArr = JSON.parse(JSON.stringify(this.value));
         tempArr.push({
           name:'',
           value:''
         });
         this.$emit('input',tempArr);
    }
  }
}
</script>

<style scoped lang="scss">

.multi-field-ctn{
  .add-btn{
    margin-bottom: 20px;
  }
  .file-list-ctn{
    .item-ctn{
      position: relative;
      margin-bottom: 20px;

      .number-ctn{
        border-radius: 4px;
        margin-right: 8px;
        display: inline-block;
        width: 36px;
        height: 36px;
        color:#ffffff;
        text-align: center;
        line-height: 36px;
        background-color: #1890ff;
      }
      .icon{

      }
      .name-ctn{
          margin-right: 20px;
      }
      .value-ctn{
          margin-right: 20px;
      }

      .del-btn{
        cursor: pointer;
        color: red;
      }
    }
  }
}
</style>
