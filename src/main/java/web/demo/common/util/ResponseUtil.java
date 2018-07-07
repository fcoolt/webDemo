package web.demo.common.util;

import flexjson.JSONSerializer;
import web.demo.common.base.BaseJsonData;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * http请求返回数据工具类
 * 
 * 类名称：ResponseUtil 创建时间：Jan 20, 2018
 * 
 * @version 1.0.0
 * 
 */
public class ResponseUtil {
	public static void html2Response(String string, HttpServletResponse response)
			throws Exception {
		if ((string == null) || (response == null)) {
			throw new NullPointerException("string or outputStream is null");
		}
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;");
		response.getWriter().write(string);
	}

	public static void string2Response(String string,
			HttpServletResponse response) throws Exception {
		if ((string == null) || (response == null)) {
			throw new NullPointerException("string or outputStream is null");
		}
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		response.getWriter().write(string);
	}

	public static void stringhtml2Response(String string,
			HttpServletResponse response) throws Exception {
		if ((string == null) || (response == null)) {
			throw new NullPointerException("string or outputStream is null");
		}
		response.setCharacterEncoding("utf-8");
		response.setContentType("html/plain");
		response.getWriter().write(string);
	}

	/**
	 * xml转response
	 * 
	 * @param string
	 * @param response
	 * @throws Exception
	 */
	public static void xml2Response(String string, HttpServletResponse response)
			throws Exception {
		if ((string == null) || (response == null)) {
			throw new NullPointerException("xml or outputStream is null");
		}
		response.setContentType("text/xml");
		response.setHeader("Cache-Control", "no-cache,must-revalidate");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(string);
	}

	/**
	 * json转response
	 * 
	 * @param string
	 * @param response
	 * @throws Exception
	 */
	public static void json2Response(String string, HttpServletResponse response)
			throws Exception {
		if ((string == null) || (response == null)) {
			throw new NullPointerException("xml or outputStream is null");
		}
		response.setContentType("text/plain");
		response.setHeader("Cache-Control", "no-cache,must-revalidate");
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(string);
	}

	public static void json2Response(BaseJsonData data, HttpServletResponse response)
			throws Exception {
		json2Response(data.serializeToJSONString(), response);
	}

	@SuppressWarnings("rawtypes")
	public static void json2Response(Map map, HttpServletResponse response)
			throws Exception {
		if ((map == null) || (response == null)) {
			throw new NullPointerException("json or outputStream is null");
		}
		String string = new JSONSerializer()
				.exclude(new String[] { "*.class" }).deepSerialize(map);
		json2Response(string, response);
	}

	@SuppressWarnings("rawtypes")
	public static void json2Response(List list, HttpServletResponse response)
			throws Exception {
		if ((list == null) || (response == null)) {
			throw new NullPointerException("json or outputStream is null");
		}
		String string = new JSONSerializer()
				.exclude(new String[] { "*.class" }).deepSerialize(list);
		json2Response(string, response);
	}

	/* Error */
	public static void file2Response(java.io.File file,
			HttpServletResponse response) throws Exception {
		// Byte code:
		// 0: aload_0
		// 1: ifnull +7 -> 8
		// 4: aload_1
		// 5: ifnonnull +13 -> 18
		// 8: new 19 java/lang/NullPointerException
		// 11: dup
		// 12: ldc 108
		// 14: invokespecial 23 java/lang/NullPointerException:<init>
		// (Ljava/lang/String;)V
		// 17: athrow
		// 18: aload_1
		// 19: ldc 110
		// 21: invokeinterface 35 2 0
		// 26: aload_1
		// 27: ldc 112
		// 29: new 114 java/lang/StringBuffer
		// 32: dup
		// 33: invokespecial 116 java/lang/StringBuffer:<init> ()V
		// 36: ldc 117
		// 38: invokevirtual 119 java/lang/StringBuffer:append
		// (Ljava/lang/String;)Ljava/lang/StringBuffer;
		// 41: aload_0
		// 42: invokevirtual 123 java/io/File:getName ()Ljava/lang/String;
		// 45: invokevirtual 119 java/lang/StringBuffer:append
		// (Ljava/lang/String;)Ljava/lang/StringBuffer;
		// 48: ldc -128
		// 50: invokevirtual 119 java/lang/StringBuffer:append
		// (Ljava/lang/String;)Ljava/lang/StringBuffer;
		// 53: invokevirtual 130 java/lang/StringBuffer:toString
		// ()Ljava/lang/String;
		// 56: invokeinterface 67 3 0
		// 61: aload_1
		// 62: invokeinterface 133 1 0
		// 67: astore_2
		// 68: new 137 java/io/FileInputStream
		// 71: dup
		// 72: aload_0
		// 73: invokespecial 139 java/io/FileInputStream:<init>
		// (Ljava/io/File;)V
		// 76: astore_3
		// 77: sipush 1024
		// 80: newarray <illegal type>
		// 82: astore 4
		// 84: goto +12 -> 96
		// 87: aload_2
		// 88: aload 4
		// 90: iconst_0
		// 91: iload 5
		// 93: invokevirtual 142 java/io/OutputStream:write ([BII)V
		// 96: aload_3
		// 97: aload 4
		// 99: invokevirtual 147 java/io/InputStream:read ([B)I
		// 102: dup
		// 103: istore 5
		// 105: iconst_m1
		// 106: if_icmpne -19 -> 87
		// 109: goto +62 -> 171
		// 112: astore 4
		// 114: aload 4
		// 116: invokevirtual 153 java/lang/Exception:printStackTrace ()V
		// 119: aload_3
		// 120: invokevirtual 156 java/io/InputStream:close ()V
		// 123: aload_2
		// 124: invokevirtual 159 java/io/OutputStream:flush ()V
		// 127: aload_2
		// 128: invokevirtual 162 java/io/OutputStream:close ()V
		// 131: goto +62 -> 193
		// 134: astore 7
		// 136: aload 7
		// 138: invokevirtual 153 java/lang/Exception:printStackTrace ()V
		// 141: goto +52 -> 193
		// 144: astore 6
		// 146: aload_3
		// 147: invokevirtual 156 java/io/InputStream:close ()V
		// 150: aload_2
		// 151: invokevirtual 159 java/io/OutputStream:flush ()V
		// 154: aload_2
		// 155: invokevirtual 162 java/io/OutputStream:close ()V
		// 158: goto +10 -> 168
		// 161: astore 7
		// 163: aload 7
		// 165: invokevirtual 153 java/lang/Exception:printStackTrace ()V
		// 168: aload 6
		// 170: athrow
		// 171: aload_3
		// 172: invokevirtual 156 java/io/InputStream:close ()V
		// 175: aload_2
		// 176: invokevirtual 159 java/io/OutputStream:flush ()V
		// 179: aload_2
		// 180: invokevirtual 162 java/io/OutputStream:close ()V
		// 183: goto +10 -> 193
		// 186: astore 7
		// 188: aload 7
		// 190: invokevirtual 153 java/lang/Exception:printStackTrace ()V
		// 193: return
		// Line number table:
		// Java source line #94 -> byte code offset #0
		// Java source line #95 -> byte code offset #8
		// Java source line #97 -> byte code offset #18
		// Java source line #98 -> byte code offset #26
		// Java source line #100 -> byte code offset #61
		// Java source line #101 -> byte code offset #68
		// Java source line #103 -> byte code offset #77
		// Java source line #105 -> byte code offset #84
		// Java source line #106 -> byte code offset #87
		// Java source line #105 -> byte code offset #96
		// Java source line #108 -> byte code offset #109
		// Java source line #109 -> byte code offset #114
		// Java source line #112 -> byte code offset #119
		// Java source line #113 -> byte code offset #123
		// Java source line #114 -> byte code offset #127
		// Java source line #115 -> byte code offset #131
		// Java source line #116 -> byte code offset #136
		// Java source line #110 -> byte code offset #144
		// Java source line #112 -> byte code offset #146
		// Java source line #113 -> byte code offset #150
		// Java source line #114 -> byte code offset #154
		// Java source line #115 -> byte code offset #158
		// Java source line #116 -> byte code offset #163
		// Java source line #118 -> byte code offset #168
		// Java source line #112 -> byte code offset #171
		// Java source line #113 -> byte code offset #175
		// Java source line #114 -> byte code offset #179
		// Java source line #115 -> byte code offset #183
		// Java source line #116 -> byte code offset #188
		// Java source line #119 -> byte code offset #193
		// Local variable table:
		// start length slot name signature
		// 0 194 0 file java.io.File
		// 0 194 1 response HttpServletResponse
		// 67 113 2 output java.io.OutputStream
		// 76 96 3 input java.io.InputStream
		// 82 16 4 buffer byte[]
		// 112 3 4 ex Exception
		// 87 5 5 n int
		// 103 3 5 n int
		// 144 25 6 localObject Object
		// 134 3 7 ex Exception
		// 161 3 7 ex Exception
		// 186 3 7 ex Exception
		// Exception table:
		// from to target type
		// 77 109 112 java/lang/Exception
		// 119 131 134 java/lang/Exception
		// 77 119 144 finally
		// 146 158 161 java/lang/Exception
		// 171 183 186 java/lang/Exception
	}
}
