(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-176a90d2"],{1896:function(t,e,n){},"38c9b":function(t,e,n){"use strict";var _=n("1896"),i=n.n(_);i.a},4505:function(t,e,n){"use strict";n.r(e);var _=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"platform-ctn"},[n("h6",{staticClass:"header-ctn"},[t._v(" 平台介绍 ")]),n("div",{staticClass:"content-ctn"},[n("tinymce",{attrs:{height:300},model:{value:t.setting.content,callback:function(e){t.$set(t.setting,"content",e)},expression:"setting.content"}})],1),n("div",{staticClass:"footer-ctn"},[n("el-button",{attrs:{type:"primary"},on:{click:function(e){return t.updateSetting()}}},[t._v("更新")])],1)])},i=[],a=n("8256"),c=n("90e7"),P={name:"Platform",components:{Tinymce:a["a"]},data:function(){return{setting:{}}},created:function(){var t=this;c["a"].getSetting({flag:"platform"}).then((function(e){t.setting=e.datas}))},methods:{updateSetting:function(){c["a"].updateSetting(this.setting).then((function(t){}))}}},o=P,r=(n("38c9b"),n("2877")),p=Object(r["a"])(o,_,i,!1,null,"0d324f1c",null);e["default"]=p.exports},"90e7":function(t,e,n){"use strict";var _=n("b775");e["a"]={getSetting:function(t){return Object(_["a"])({url:Object({NODE_ENV:"production",VUE_APP_API_URL:"http://120.79.39.252:60/service/",VUE_APP_BASE_API:"/prod-api",VUE_APP_IMAGE_URL:"http://120.79.39.252:60/image/",BASE_URL:"/"}).VUE_APP_API_PREFIX+"/setting/getSetting",method:"post",data:t})},updateSetting:function(t){return Object(_["a"])({url:Object({NODE_ENV:"production",VUE_APP_API_URL:"http://120.79.39.252:60/service/",VUE_APP_BASE_API:"/prod-api",VUE_APP_IMAGE_URL:"http://120.79.39.252:60/image/",BASE_URL:"/"}).VUE_APP_API_PREFIX+"/setting/updateSetting",method:"post",data:t})},getType:function(t){return Object(_["a"])({url:Object({NODE_ENV:"production",VUE_APP_API_URL:"http://120.79.39.252:60/service/",VUE_APP_BASE_API:"/prod-api",VUE_APP_IMAGE_URL:"http://120.79.39.252:60/image/",BASE_URL:"/"}).VUE_APP_API_PREFIX+"/type/page",method:"post",data:t})},insertType:function(t){return Object(_["a"])({url:Object({NODE_ENV:"production",VUE_APP_API_URL:"http://120.79.39.252:60/service/",VUE_APP_BASE_API:"/prod-api",VUE_APP_IMAGE_URL:"http://120.79.39.252:60/image/",BASE_URL:"/"}).VUE_APP_API_PREFIX+"/type/insert",method:"post",data:t})},deleteType:function(t){return Object(_["a"])({url:Object({NODE_ENV:"production",VUE_APP_API_URL:"http://120.79.39.252:60/service/",VUE_APP_BASE_API:"/prod-api",VUE_APP_IMAGE_URL:"http://120.79.39.252:60/image/",BASE_URL:"/"}).VUE_APP_API_PREFIX+"/type/delete",method:"post",data:t})},updateType:function(t){return Object(_["a"])({url:Object({NODE_ENV:"production",VUE_APP_API_URL:"http://120.79.39.252:60/service/",VUE_APP_BASE_API:"/prod-api",VUE_APP_IMAGE_URL:"http://120.79.39.252:60/image/",BASE_URL:"/"}).VUE_APP_API_PREFIX+"/type/update",method:"post",data:t})}}}}]);