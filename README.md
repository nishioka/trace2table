dtrace の関数トレース出力を、illumos のソースブラウザへのリンクを埋め込んだ html に変換する。

>  3  -> zfs_read                              
>  3    -> rrw_enter                           
>  3      -> rrw_enter_read                    
>  3      <- rrw_enter_read                    
>  3    <- rrw_enter                           
>  3    -> zfs_range_lock                      
>  3      -> kmem_alloc                        
>  3        -> kmem_cache_alloc                
>  3        <- kmem_cache_alloc                


<table align="left" border="0" cellpadding="1" cellspacing="1" width="800">
	<tbody>
		<tr>
			<td colspan="1">
				&nbsp;</td>
			<td colspan="24">
				-&gt; <a href="http://src.illumos.org//source/s?defs=zfs_read&project=illumos-gate" target="_blank">zfs_read</a></td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td colspan="2">
				&nbsp;</td>
			<td colspan="23">
				-&gt; <a href="http://src.illumos.org//source/s?defs=zfs_read&project=illumos-gate" target="_blank">rrw_enter</a></td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td colspan="3">
				&nbsp;</td>
			<td colspan="22">
				-&gt; <a href="http://src.illumos.org//source/s?defs=rrw_enter&project=illumos-gate" target="_blank">rrw_enter_read</a></td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td colspan="2">
				&nbsp;</td>
			<td colspan="23">
				-&gt; <a href="http://src.illumos.org//source/s?defs=zfs_read&project=illumos-gate" target="_blank">zfs_range_lock</a></td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td colspan="3">
				&nbsp;</td>
			<td colspan="22">
				-&gt; <a href="http://src.illumos.org//source/s?defs=zfs_range_lock&project=illumos-gate" target="_blank">kmem_alloc</a></td>
			<td>
				&nbsp;</td>
		</tr>
		<tr>
			<td colspan="4">
				&nbsp;</td>
			<td colspan="21">
				-&gt; <a href="http://src.illumos.org//source/s?defs=kmem_alloc&project=illumos-gate" target="_blank">kmem_cache_alloc</a></td>
			<td>
				&nbsp;</td>
		</tr>
	</tbody>
</table>