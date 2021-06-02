package com.nail.post.utils;

import com.nail.post.entity.Result;

/**
 * Created By XJL On 2017/11/8
 */
public class ResultUtils {
    public static Result success(Object object){
        Result result = new Result();
        result.setCode(200);
        result.setMsg("成功！");
        result.setData(object);
        return result;
    }

    public static Result success(){
        return success(null);
    }
    public static Result failure(String msg,Integer code){
        Result result = new Result();
        result.setMsg(msg);
        //result.setCode(400);
        result.setCode(code);
        return result;
    }
}
