(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-58d614b2"],{2096:function(e,t,s){"use strict";var r=s("4b21"),n=s.n(r);n.a},"344b":function(e,t,s){},"4b21":function(e,t,s){},"90e7":function(e,t,s){"use strict";var r=s("b775");t["a"]={getSetting:function(e){return Object(r["a"])({url:"http://120.79.39.252:60/service//setting/getSetting",method:"post",data:e})},updateSetting:function(e){return Object(r["a"])({url:"http://120.79.39.252:60/service//setting/updateSetting",method:"post",data:e})},getType:function(e){return Object(r["a"])({url:"http://120.79.39.252:60/service//type/page",method:"post",data:e})},insertType:function(e){return Object(r["a"])({url:"http://120.79.39.252:60/service//type/insert",method:"post",data:e})},deleteType:function(e){return Object(r["a"])({url:"http://120.79.39.252:60/service//type/delete",method:"post",data:e})},updateType:function(e){return Object(r["a"])({url:"http://120.79.39.252:60/service//type/update",method:"post",data:e})}}},"9e08":function(e,t,s){"use strict";var r=s("344b"),n=s.n(r);n.a},a9d1:function(e,t,s){"use strict";s.r(t);var r=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("section",{staticClass:"web-setting-ctn"},[s("div",{staticClass:"main-ctn"},[s("el-form",{ref:"postForm",staticClass:"demo-postForm",attrs:{model:e.postForm,rules:e.rules,"label-width":"120px"}},[s("el-form-item",{attrs:{label:"网站logo文字",prop:"logoText"}},[s("el-input",{staticStyle:{width:"200px"},attrs:{placeholder:"请输入网站logo文字"},model:{value:e.postForm.logoText,callback:function(t){e.$set(e.postForm,"logoText",t)},expression:"postForm.logoText"}})],1),s("el-form-item",{attrs:{label:"网站主题色",prop:"region"}},[s("el-select",{staticClass:"search-item filter-item",staticStyle:{width:"200px"},attrs:{placeholder:"网站主题色",clearable:""},model:{value:e.postForm.primaryColor,callback:function(t){e.$set(e.postForm,"primaryColor",t)},expression:"postForm.primaryColor"}},e._l(e.primaryColorList,(function(e,t){return s("el-option",{key:t,attrs:{label:e.name,value:e.value}})})),1)],1),s("el-form-item",{attrs:{label:"搜索关键词",prop:"keywords"}},[s("multi-field",{attrs:{conf:e.keywordsConf},model:{value:e.postForm.keywords,callback:function(t){e.$set(e.postForm,"keywords",t)},expression:"postForm.keywords"}})],1),s("el-form-item",{attrs:{label:"敏感词",prop:"sensitiveWords"}},[s("multi-field",{attrs:{conf:e.sensitiveWordsConf},model:{value:e.postForm.sensitiveWords,callback:function(t){e.$set(e.postForm,"sensitiveWords",t)},expression:"postForm.sensitiveWords"}})],1),s("el-form-item",{attrs:{label:"友情链接",prop:"friendLinks"}},[s("multi-field",{attrs:{conf:e.friendLinksConf},model:{value:e.postForm.friendLinks,callback:function(t){e.$set(e.postForm,"friendLinks",t)},expression:"postForm.friendLinks"}})],1),s("el-form-item",{attrs:{label:"用户协议",prop:"protocal"}},[s("tinymce",{model:{value:e.postForm.protocal,callback:function(t){e.$set(e.postForm,"protocal",t)},expression:"postForm.protocal"}})],1),s("el-form-item",[s("el-button",{attrs:{type:"primary"},on:{click:function(t){return e.updateSetting()}}},[e._v("更新")])],1)],1)],1)])},n=[],i=s("8256"),a=s("90e7"),o=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"multi-field-ctn"},[s("el-button",{staticClass:"add-btn",attrs:{type:"primary"},on:{click:function(t){return e.addItem()}}},[e._v("添加")]),s("div",{staticClass:"file-list-ctn"},e._l(e.value,(function(t,r){return s("div",{key:r,staticClass:"item-ctn"},[s("span",{staticClass:"number-ctn"},[e._v(e._s(r+1))]),s("el-input",{staticClass:"name-ctn",staticStyle:{width:"200px"},attrs:{placeholder:e.conf.nameHolder},model:{value:t.name,callback:function(s){e.$set(t,"name",s)},expression:"item.name"}}),s("el-input",{directives:[{name:"show",rawName:"v-show",value:!e.conf.hideValue,expression:"!conf.hideValue"}],staticClass:"value-ctn",staticStyle:{width:"200px"},attrs:{placeholder:e.conf.valueHolder},model:{value:t.value,callback:function(s){e.$set(t,"value",s)},expression:"item.value"}}),s("span",{staticClass:"del-btn",on:{click:function(s){return e.deleteItem(r,t)}}},[e._v("删除")])],1)})),0)],1)},l=[],u=(s("a434"),{components:{},name:"MultiField",props:{conf:{type:Object,defalut:function(){return{hideValue:!0,nameHolder:"请输入名称",valueHolder:"请输入值"}}},value:{type:Array,default:function(){return[{name:"我是name1",value:"我是value1"},{name:"我是name1",value:"我是value1"},{name:"我是name1",value:"我是value1"},{name:"我是name1",value:"我是value1"}]}}},created:function(){},methods:{deleteItem:function(e,t){var s=JSON.parse(JSON.stringify(this.value));s.splice(e,1),this.$emit("input",s)},addItem:function(){var e=JSON.parse(JSON.stringify(this.value));e.push({name:"",value:""}),this.$emit("input",e)}}}),c=u,d=(s("9e08"),s("2877")),m=Object(d["a"])(c,o,l,!1,null,"80c26cba",null),p=m.exports,f={name:"WebSetting",components:{Tinymce:i["a"],MultiField:p},data:function(){return{keywordsConf:{hideValue:!0,nameHolder:"请输入关键词",valueHolder:""},friendLinksConf:{hideValue:!1,nameHolder:"请输入链接名",valueHolder:"请输入链接地址"},sensitiveWordsConf:{hideValue:!0,nameHolder:"请输入敏感词",valueHolder:""},primaryColorList:[{name:"黄色主题色(#ffff00)",value:"theme-yellow"},{name:"红色主题色(#ff0033)",value:"theme-red"},{name:"紫色主题色(#6600ff)",value:"theme-purple"},{name:"白主题色(#ffffff)",value:"theme-white"},{name:"黑色主题色(#333333)",value:"theme-black"}],postForm:{logoText:"",keywords:[],protocal:"",friendLinks:[],primaryColor:"",sensitiveWords:[]},rules:{name:[{required:!0,message:"请输入广告名",trigger:"blur"},{min:3,max:5,message:"长度在 3 到 5 个字符",trigger:"blur"}],startTime:[{required:!0,message:"请输入开始时间",trigger:"blur"}],endTime:[{required:!0,message:"请输入结束时间",trigger:"blur"}],positionId:[{required:!0,message:"请选择广告位置",trigger:"blur"}]}}},created:function(){var e=this;a["a"].getSetting({flag:"setting"}).then((function(t){var s=t.datas;s.keywords=s.keywords?JSON.parse(s.keywords):[],s.sensitiveWords=s.sensitiveWords?JSON.parse(s.sensitiveWords):[],s.friendLinks=s.friendLinks?JSON.parse(s.friendLinks):[],e.postForm=s}))},methods:{updateSetting:function(){var e=this,t=JSON.parse(JSON.stringify(this.postForm));t.keywords=t.keywords?JSON.stringify(t.keywords):"",t.sensitiveWords=t.sensitiveWords?JSON.stringify(t.sensitiveWords):"",t.friendLinks=t.friendLinks?JSON.stringify(t.friendLinks):"",a["a"].updateSetting(t).then((function(t){e.$notify({title:"修改成功",message:"修改成功",type:"success",duration:2e3})}))}}},v=f,h=(s("2096"),Object(d["a"])(v,r,n,!1,null,"69b6addc",null));t["default"]=h.exports}}]);