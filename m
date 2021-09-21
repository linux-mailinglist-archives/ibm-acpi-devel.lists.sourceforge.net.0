Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA80941366F
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 21 Sep 2021 17:46:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mShy2-0003IP-NT; Tue, 21 Sep 2021 15:45:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <greg@kroah.com>) id 1mShxw-0003HP-Os
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Sep 2021 15:45:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=68Ez9kJNOEr/C+egNL3CEoXa9GEO4jmpwrJs9DLpLDg=; b=K/2J8P4LntzXHmMAAXYrF40vic
 dx8uwvEdV/0vagWAyS4nnynmAgzeAnW5DZThqhlNvvowxMQ5rq+rHj0uFamxR+UUEbWgmMsH9k6el
 djfscipP7+pmY7fTCgs+Hs2616YWPBbfKSMPy5usx0mLw/dmkX3tC9VNtAgyl4ZfLPbU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=68Ez9kJNOEr/C+egNL3CEoXa9GEO4jmpwrJs9DLpLDg=; b=UwomFj+seUeNfPEM95sOF/9rx+
 +1gsecPyCAQ7JDYx6sXOVmhWIY5RXo3DfMfqhFTMNJ8m16xUZK34MocE/jjGXuaZuvXb5g08bXWK+
 1+ijoPmZiodE1VhKciERKRBrNGy1f09glIxPDK+SwPYdv8mxEbkDmi8FwQ8rT3lnmPIM=;
Received: from wnew4-smtp.messagingengine.com ([64.147.123.18])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mShxw-000esy-8z
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Sep 2021 15:45:52 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.west.internal (Postfix) with ESMTP id 88B752B013BA;
 Tue, 21 Sep 2021 11:45:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 21 Sep 2021 11:45:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=68Ez9kJNOEr/C+egNL3CEoXa9GE
 O4jmpwrJs9DLpLDg=; b=b8Xq/u2P2r2mU/sMeJ+g7E1UIIBCj7fudf6fVi2NqUW
 gFRfZELr2enVCh6DjaMetTI4G0sFgTfFRDu1L8oE+kOjoeO8nDgZNjrL8O4ruERY
 QQ9pgh/7833+n/+vJy/xB5WvKBQ3yEIODA3ewTf+o7oK0YXRWOYpLXgAhuhn8a0Q
 S8BT9ddw4wuCRnTUW7rnPOKH1pyDeZMLivhpWWvfehamINIQ6Yf2/sAMZvgqqWom
 tTksrBhLNdeThVqgHs6oy0nHdOzGMffxqopCZVR5x+dt32LxZ6ZWF/2Hu3hY+0kx
 P+xAqNi8RA3IqmEJB0K50sfPYXw4qXUUHyfk5rMe+vA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=68Ez9k
 JNOEr/C+egNL3CEoXa9GEO4jmpwrJs9DLpLDg=; b=Ls6G5GkOc5MBBotV22r9Uo
 NWjeD1Cwgy7h4PrJJwdCk9xSIpvSspXJn/lK3ole7H8+uLSJuslCV9wfeuzauKAn
 1ilALdzmqL5nY+PTYKicPlSOrfhay6pAI7CQ0CPDh3KDQtbs5xS50gvAyhoVsQ7k
 3BXPHQH6fup08FQIGLCYgYl0lOHz5FX6h5LQEzE5bQWpMi0otBBId/dRG905seJG
 PT72pP7GWElLvcZi01iEbsJZXvUPhyVAy+KMm+/8bvd2N2mPlS11LTXjQSzF6TU/
 zX6Z5uER4cM2L0IRV6d6WL0CSKUFS34W4dKOihzmrw9fJCSReNW/9T3OxJlw+RnA
 ==
X-ME-Sender: <xms:J_5JYSe6D7aaoRNo-_lyZPJQXJcLtD3RsmmkG7frh-Js6XfEx60alQ>
 <xme:J_5JYcNo21un18096Ck-eSIEDCKAR8z1-KjzRBfHAuKRCMe67LZpEoNxht5PNtgGP
 OQ7tOtrS96k9w>
X-ME-Received: <xmr:J_5JYTglr-G_PY_M4IOwYlpO80oVXdNshkJA_XRaL2uiG9NF0zAbp7Cau9jIq3m6MWw7alqv_wislBOpmA7RP10BWbX6XHEk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeigedgleefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
 fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
 drtghomh
X-ME-Proxy: <xmx:J_5JYf-Uhpe58UIWGYofA7myYYpdIgQx5HGpMYZo3PhIdLcuHA8IkQ>
 <xmx:J_5JYetOgieNVo6mNCisN27dFF55aw0up_BluX1kQqO-1zfnvEAfrQ>
 <xmx:J_5JYWFY7fAUYmYGLo07sDXpHxwKJpnVPzUYtoigI05IgxbyByZQjg>
 <xmx:Kf5JYZlJ8GNH98916Fl08WrKH5ydkjqhrCM6fBTyUWh6JZunx9wTPGrKPho>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 21 Sep 2021 11:45:43 -0400 (EDT)
Date: Tue, 21 Sep 2021 17:45:41 +0200
From: Greg KH <greg@kroah.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <YUn+Jfx9a+Ad1PsK@kroah.com>
References: <20210918150500.21530-1-len.baker@gmx.com>
 <202109192246.B438B42EF@keescook>
 <ba427967-cb1b-58a8-ec93-bd5ae89f58f8@redhat.com>
 <YUn3F9HtgrpN9sSM@kroah.com>
 <725ac392-642b-f57d-a286-d662eaa7d2a2@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <725ac392-642b-f57d-a286-d662eaa7d2a2@redhat.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 21, 2021 at 05:38:39PM +0200,
 Hans de Goede wrote:
 > > All attributes for this driver are documented in Documentation/ABI/,
 > > right? :) > > I'm not sure if all attributes are documented, [...] 
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
X-Headers-End: 1mShxw-000esy-8z
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

On Tue, Sep 21, 2021 at 05:38:39PM +0200, Hans de Goede wrote:
> > All attributes for this driver are documented in Documentation/ABI/,
> > right? :)
> 
> I'm not sure if all attributes are documented, but a lot of them
> (including all recently added ones) are documented in:
> Documentation/admin-guide/laptops/thinkpad-acpi.rst

They should also go into Documentation/ABI/ which is where sysfs files
are documented.  We are working on tools that make parsing that easier,
so it would be good to keep them out of other random documentation
files whenever possible.

thanks,

greg k-h


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
