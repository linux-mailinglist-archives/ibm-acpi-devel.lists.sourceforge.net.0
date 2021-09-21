Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6A04135FF
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 21 Sep 2021 17:16:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mShUu-0003aJ-0v; Tue, 21 Sep 2021 15:15:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <greg@kroah.com>) id 1mShUs-0003aC-GB
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Sep 2021 15:15:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6b4bk+5E8OPLQowTL7kis4IonQ7Cljxm8kY9KOSGcPs=; b=Nyl0PQACS1HDKnYW4Hg8YlkqdL
 QZASfUO9THJizRslKOZJcdga+l9eU/zGQwZ/aYNDJVGahot6Aaug2PDAewQqoBEkFC8oQr+YcFp3u
 ZTAMA7M7apHT4XOOtBMSeGiTqPS5llisOgRBLaduVqc41S81ifuilBncq8/pKB3WE9jA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6b4bk+5E8OPLQowTL7kis4IonQ7Cljxm8kY9KOSGcPs=; b=jXYV6K8uRmz9h7ZIAnYoCGFZSw
 flZVkjB2+r/I5ivDFqss7WY4l/vhKwADXrgjIyKiV9gH245rhCSmoah9KCfVYTnNhGudbTGuQ+Obi
 /af9paNbQ22CKuPnhkHJSxs5O2uOtHIxTPboP9GtrboH0BvnNhLi7uqI9UkYrZbDF/mg=;
Received: from wnew4-smtp.messagingengine.com ([64.147.123.18])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mShUq-000ckT-HA
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Sep 2021 15:15:50 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.west.internal (Postfix) with ESMTP id 488EC2B01343;
 Tue, 21 Sep 2021 11:15:39 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 21 Sep 2021 11:15:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=6b4bk+5E8OPLQowTL7kis4IonQ7
 Cljxm8kY9KOSGcPs=; b=rZpPfzSs7Jb93FbC2bda9KAVNQiNL2itKHeoUk8QtO4
 nBfNouIRbOzCMVOAwkrqCbiRklbBDXzt8fYbjKQZJfyE9hSK51MlaU1k5BJaJXPA
 QZZR/dVzp3MOBxZ5qYKUSOI69UU3h29jXS3yjzXBmZGSJZTjHYBU5b2i3OSy+klS
 chgd3LZghrfSzga9MfaLMGDUX0ZaSh19tyL2gJvrARA07G7SChyQc49zg4XwITuP
 CXaUtQYayrE5+G2ytoWthiJ1n0BgJPvgnC9/YeRKN/xvI9qn0y6/INe28jrtq/pJ
 mvmkt8Gdmazj4rO4+C1yfGutYlOPFXdIofAaxB1aqHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=6b4bk+
 5E8OPLQowTL7kis4IonQ7Cljxm8kY9KOSGcPs=; b=eD37gPlHJgVovesHO5uuoI
 N+uyLl/5gkfFL+fAr9k/5/pPL22rUsUuC42Rc+oLsbhLUzjJg7b8/rz4mhocY0t0
 DHJzv3Eqvjgy/z1l3bI9huge0JjW1aKY3Q+41QinCs2WZ69gNO4YEglkqfNIiEWp
 5GJOOSDEINUb1ZcqDgJg1AvyPfO0+rSai5FH7gW8XXTH4SR7h5HV5QH8mRUxwpVu
 7ZSiviVPb27RxoUI42QbIDk9qeEaa9cA05RSIw/QTzPd5Hv9aF3n7uRYCaZCZMWM
 wN4iwnuC2/CBh0dzpReBoPgbiFFTIm5SOpwzl5kzOhWMN/bNAK1E9pWcAcCUmjAg
 ==
X-ME-Sender: <xms:GfdJYWj23d-WWr7-03IMMcrguH72liZ2gH2LFAiJ6cEd87yRrELBpg>
 <xme:GfdJYXB2uVxuBAPPAF0VODCp299Dt3gVF4xRMuc6AYApy3wuaqY4NVj4yOjbP9F04
 0b8B5YsTVdZTg>
X-ME-Received: <xmr:GfdJYeFlAGI7Ex5XjdIALQ1e2C9lS0fcXrBfam4RgwGvGhF7spZ1I-4NelFazSDbcZrjhJqw34qpkeU-ouLVk8gIXlfCl8br>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeigedgkeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeeuleeltd
 ehkeeltefhleduuddvhfffuedvffduveegheekgeeiffevheegfeetgfenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:GfdJYfTyAmQvuuIDWQI2AWOEymz5RJ-Jd7ikExPO1vXs4R5rTaEXWA>
 <xmx:GfdJYTxuvAi44xJQBv5O75YkTfZayUXMB33vqLerFN0RGRzz4_ZAug>
 <xmx:GfdJYd5zeyuqfYBFrouN67lG3N9yIfDV-Qm9nn0dPBcKRErBvu2fOQ>
 <xmx:GvdJYUqgEQUA-OnCpFXRTg9Ob23CIAB-EkAa70v175uT6bPdPRJYGDQOaCs>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 21 Sep 2021 11:15:37 -0400 (EDT)
Date: Tue, 21 Sep 2021 17:15:35 +0200
From: Greg KH <greg@kroah.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <YUn3F9HtgrpN9sSM@kroah.com>
References: <20210918150500.21530-1-len.baker@gmx.com>
 <202109192246.B438B42EF@keescook>
 <ba427967-cb1b-58a8-ec93-bd5ae89f58f8@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba427967-cb1b-58a8-ec93-bd5ae89f58f8@redhat.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 21, 2021 at 03:46:23PM +0200,
 Hans de Goede wrote:
 > Hi, > > On 9/20/21 7:58 AM, Kees Cook wrote: > > On Sat, Sep 18, 2021 at
 05:05:00PM +0200, Len Baker wrote: > >> As noted in the "Depre [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.18 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mShUq-000ckT-HA
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Prefer
 struct_size over open coded arithmetic
X-BeenThere: ibm-acpi-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: thinkpad-acpi/ibm-acpi Linux driver development
 <ibm-acpi-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=ibm-acpi-devel>
List-Post: <mailto:ibm-acpi-devel@lists.sourceforge.net>
List-Help: <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: Mark Gross <mgross@linux.intel.com>, Kees Cook <keescook@chromium.org>,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 Len Baker <len.baker@gmx.com>, linux-hardening@vger.kernel.org,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, Sep 21, 2021 at 03:46:23PM +0200, Hans de Goede wrote:
> Hi,
> 
> On 9/20/21 7:58 AM, Kees Cook wrote:
> > On Sat, Sep 18, 2021 at 05:05:00PM +0200, Len Baker wrote:
> >> As noted in the "Deprecated Interfaces, Language Features, Attributes,
> >> and Conventions" documentation [1], size calculations (especially
> >> multiplication) should not be performed in memory allocator (or similar)
> >> function arguments due to the risk of them overflowing. This could lead
> >> to values wrapping around and a smaller allocation being made than the
> >> caller was expecting. Using those allocations could lead to linear
> >> overflows of heap memory and other misbehaviors.
> >>
> >> So, switch to flexible array member in the struct attribute_set_obj and
> >> refactor the code accordingly to use the struct_size() helper instead of
> >> the argument "size + count * size" in the kzalloc() function.
> >>
> >> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html#open-coded-arithmetic-in-allocator-arguments
> >>
> >> Signed-off-by: Len Baker <len.baker@gmx.com>
> >> ---
> >>  drivers/platform/x86/thinkpad_acpi.c | 8 +++-----
> >>  1 file changed, 3 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> >> index 50ff04c84650..ed0b01ead796 100644
> >> --- a/drivers/platform/x86/thinkpad_acpi.c
> >> +++ b/drivers/platform/x86/thinkpad_acpi.c
> >> @@ -1008,7 +1008,7 @@ struct attribute_set {
> >>
> >>  struct attribute_set_obj {
> >>  	struct attribute_set s;
> >> -	struct attribute *a;
> >> +	struct attribute *a[];
> >>  } __attribute__((packed));
> > 
> > Whoa. I have so many questions... :)
> > 
> >>
> >>  static struct attribute_set *create_attr_set(unsigned int max_members,
> >> @@ -1020,13 +1020,11 @@ static struct attribute_set *create_attr_set(unsigned int max_members,
> >>  		return NULL;
> >>
> >>  	/* Allocates space for implicit NULL at the end too */
> >> -	sobj = kzalloc(sizeof(struct attribute_set_obj) +
> >> -		    max_members * sizeof(struct attribute *),
> >> -		    GFP_KERNEL);
> >> +	sobj = kzalloc(struct_size(sobj, a, max_members + 1), GFP_KERNEL);
> > 
> > Whoa, this needs a lot more detail in the changelog if this is actually
> > correct. The original code doesn't seem to match the comment? (Where is
> > the +1?) So is this also a bug-fix?
> 
> Kees, at first I thought you were spot-on with this comment, but the
> truth is more subtle. struct attribute_set_obj was:
> 
> struct attribute_set_obj {
>         struct attribute_set s;
>         struct attribute *a;
> } __attribute__((packed));
> 
> Another way of looking at this, which makes things more clear is as:
> 
> struct attribute_set_obj {
>         struct attribute_set s;
>         struct attribute *a[1];
> } __attribute__((packed));
> 
> So the sizeof(struct attribute_set_obj) in the original kzalloc call
> included room for 1 "extra" pointer which is reserved for the terminating
> NULL pointer.
> 
> Changing the struct to:
> 
> struct attribute_set_obj {
>         struct attribute_set s;
>         struct attribute *a[];
> } __attribute__((packed));
> 
> Is equivalent to changing it to:
> 
> struct attribute_set_obj {
>         struct attribute_set s;
>         struct attribute *a[0];
> } __attribute__((packed));
> 
> So the change in the struct declaration reduces the sizeof(struct attribute_set_obj)
> by the size of 1 pointer, making the +1 necessary.
> 
> So AFAICT there is actually no functional change here.
> 
> Still I will hold off merging this until we agree on this :)

First off, why is a single driver doing so many odd things with
attribute groups?  Why not just use them the way that the rest of the
kernel does?  Why does this driver need this special handling and no one
else does?

I think the default way of handling if an attribute is enabled or not,
should suffice here, and make things much simpler overall as all of this
crazy attribute handling can just be removed.

Bonus would also be that I think it would fix the race conditions that
happen when trying to create attributes after the device is bound to the
driver that I think the existing driver has today.

> > (I see the caller uses +2? Why? It seems to be using each of hotkey_attributes,
> > plus 1 more attr, plus a final NULL?)
> 
> The +2 is actually for 2 extra attributes (making the total number
> of extra attributes +3 because the sizeof(struct attribute_set_obj)
> already includes 1 extra). 
> 
> FWIW these 2 extra attributes are for devices with a
> a physical rfkill on/off switch and for the device being
> a convertible capable of reporting laptop- vs tablet-mode.

Again, using the default way to show (or not show) attributes should
solve this issue.  Why not just use that instead?

> >>  	if (!sobj)
> >>  		return NULL;
> >>  	sobj->s.max_members = max_members;
> >> -	sobj->s.group.attrs = &sobj->a;
> >> +	sobj->s.group.attrs = sobj->a;
> >>  	sobj->s.group.name = name;
> > 
> > The caller also never sets a name?
> 
> attribute_group.name may be NULL, I don't know
> of (m)any drivers which actual set this to non NULL.

It is used by some, that is how you can put all of the attributes in a
subdirectory automatically.  No idea if that's needed here...

All attributes for this driver are documented in Documentation/ABI/,
right? :)

thanks,

greg k-h


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
