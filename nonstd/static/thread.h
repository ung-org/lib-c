static struct per_thread *per_thread(void)
{
	static struct per_thread pt = {0};
	return &pt;
}
