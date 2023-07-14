#include "PostEffectTest.hlsli"

Texture2D<float4> tex : register(t0);  // 0番スロットに設定されたテクスチャ
SamplerState smp : register(s0);      // 0番スロットに設定されたサンプラー

float4 main(VSOutput input) : SV_TARGET
{
	//float4 total = 0;
	//for (float x = -1; x < 2; x++)
	//{
	//	for (float y = -1; y < 2; y++)
	//	{
	//		total += tex.Sample(smp, input.uv + float2(x / 640, y / 360));
	//	}
	//}
	float4 texcolor = tex.Sample(smp,input.uv);
	//float4 texcolor2 = tex.Sample(smp, input.uv + float2(1 / 640,0));
	//float4 total = texcolor + texcolor2;
	//float4 avg = total / 9;

	//return float4(avg.rgb, 1);
	return float4(texcolor.rgb, 1);
}