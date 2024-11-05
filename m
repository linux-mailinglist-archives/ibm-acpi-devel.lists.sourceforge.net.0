Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53ABC9BD918
	for <lists+ibm-acpi-devel@lfdr.de>; Tue,  5 Nov 2024 23:50:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t8SN8-0007dZ-3C;
	Tue, 05 Nov 2024 22:50:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t8SN2-0007cb-DO
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 05 Nov 2024 22:49:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iUEnUbiKHm7hBg4xQi/z/U9mNVNxeKdQypXGGIH3KZs=; b=kS5htY+hg71LSvm1zfqLQ/ZTR1
 XgFfzYJMLFP7l06BYqJNAv/PZm5zruQKcBpkt2omkyIu8nFuW7VY3S31VrQpdELEqPa0nUe/F6YA8
 k6PjTEIz5nUGZ7URxnbajhuEkFUsm1kFjDZi4LqHPzp+7wov60d/RQrAGFX5yVEMcbHU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iUEnUbiKHm7hBg4xQi/z/U9mNVNxeKdQypXGGIH3KZs=; b=TCBliwUdnNGhPFPWXCX9NXDCaE
 YBxtTFMN2y8XhA51y3GehV/mZkidcsJiG+lzRO3weA3JujvPSJQFlNgNLvp7iCHfsH5ExO8o9gKbK
 ai5u03eSW8dIcbaGgi6RpPZcRTw09YTEPlRHVLAV4bsNOWJDaqFBz7VpKG9jZ7POZQrw=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t8SN2-0000Dt-9k for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 05 Nov 2024 22:49:57 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 356F52540167;
 Tue,  5 Nov 2024 17:49:45 -0500 (EST)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Tue, 05 Nov 2024 17:49:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730846985;
 x=1730933385; bh=iUEnUbiKHm7hBg4xQi/z/U9mNVNxeKdQypXGGIH3KZs=; b=
 Otca8lJLeoySiSUIS2wTsg2ijN0G2lGe05lUHAhThP6VP4GKQUj6X8prXwdbOACS
 FxryAWHdTLyoG3+hJrXw1klaFfI5Sj2MdPKKY2Wms98fCqDi97c0q0QITHPhataH
 TOhZLxcvYNtJ4JLlH2eMdggjIapq+w8GDBmPsWVbB0Xd5pjTQefulrdbawrL+u8o
 +3+8DQZTf1bnYwVeQrgqy3wD4u3TOkFLHpX2jtxBi5tZ9myhf7+6GYHfNBqjwPj+
 4Q1Vbo98GaAX7Hq5aHyfelpzjsNxtcql/lVbO4Mdpa9/TWltVbkdDNImch4RqOnH
 4gRIJQdEGden8FB4pfYjMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730846985; x=
 1730933385; bh=iUEnUbiKHm7hBg4xQi/z/U9mNVNxeKdQypXGGIH3KZs=; b=B
 pfhZV8RhBiTDKAPIagIdHMCA2XCO7hW1Z2EyIO1pExpkmwyGPSARx70DHieozEeU
 Shfc9hjpPLqKHmH/leZQQK2aZRoQCiPHIwmEBdO77qxhY+2QCt2c7QbK7IUt5afV
 P1souhqQyMnuyxIvW3cTtThQG2ISt17xHMAvdX43r2ArcYgQS4IOnCRl2nFOX2t2
 c4uTtF5QQS+TynXLm2hI4xSwe45CGQezyjaLHSM35lc7DOxqbTCK3amb6g5ZRTSR
 /Ojcz/N4v23EqQxMpPUZMCGkabC7Up6FXxrx/9BRX2N9bLcJSWTbW08xYHBg5IZm
 DuiiE52rBZ9SZImrdQjMQ==
X-ME-Sender: <xms:B6EqZ7JuMiZZkN_YUWWr1mgetoP6YbT8ygPff_CE9-cAZido3u2utg>
 <xme:B6EqZ_Ip-0JKwFN-ly5V0jYQgvG0k0DGmX8ffIS7wxiObXyYOMk-6iy1qzwyNrFZ6
 WpB_z8KAGisv2uq4iU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrtddugddtfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
 tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnth
 hsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthejredtredttden
 ucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvghnoh
 hvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnhephfeuvdehteeghedthedt
 veehuddvjeejgffgieejvdegkefhfeelheekhedvffehnecuvehluhhsthgvrhfuihiivg
 epudenucfrrghrrghmpehmrghilhhfrhhomhepmhhpvggrrhhsohhnqdhlvghnohhvohes
 shhquhgvsggsrdgtrgdpnhgspghrtghpthhtohepvddupdhmohguvgepshhmthhpohhuth
 dprhgtphhtthhopehshhihrghmqdhsuhhnuggrrhdrshdqkhesrghmugdrtghomhdprhgt
 phhtthhopehmrghrihhordhlihhmohhntghivghllhhosegrmhgurdgtohhmpdhrtghpth
 htohepihhkvgdrphgrnhestggrnhhonhhitggrlhdrtghomhdprhgtphhtthhopegrlhgv
 gigsvghlmhegkeesghhmrghilhdrtghomhdprhgtphhtthhopegtohhrvghnthhinhdrtg
 hhrghrhiesghhmrghilhdrtghomhdprhgtphhtthhopehluhiimhgrgihimhhilhhirghn
 sehgmhgrihhlrdgtohhmpdhrtghpthhtohephhhmhheshhhmhhdrvghnghdrsghrpdhrtg
 hpthhtohepshhohigvrhesihhrlhdrhhhupdhrtghpthhtoheplhgvnhgssehkvghrnhgv
 lhdrohhrgh
X-ME-Proxy: <xmx:B6EqZzugGKsIQBZiZsoGbZiYOU_kL2pm2lhoWFQYJqWCfsMdEl8fuA>
 <xmx:B6EqZ0anuB4vF9-bBX9i2lNPOOPO-tDFq1jf1_ACtLJzoRCTMfr4GA>
 <xmx:B6EqZybhsx_O5afOsUh6b9LMAOfMzIG9GVOBqAnr1w84DFkwDi3doA>
 <xmx:B6EqZ4CdzR9OOU9DVVt53_JDQ-FObiVGCTIdiUGcSPbizRxas-MgUg>
 <xmx:CaEqZ0b6ol7zOnfVvjwtrFIguck8vclh8egUKEaaQrd4eQ4_riV96KPM>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id AD6153C0066; Tue,  5 Nov 2024 17:49:43 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Tue, 05 Nov 2024 17:49:23 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <ab676d6e-30aa-45ac-85c8-32d093eeb5e3@app.fastmail.com>
In-Reply-To: <20241105153316.378-21-mario.limonciello@amd.com>
References: <20241105153316.378-1-mario.limonciello@amd.com>
 <20241105153316.378-21-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mario, On Tue, Nov 5, 2024, at 10:33 AM, Mario Limonciello
 wrote: > The class interface allows changing multiple platform profiles on
 a system > to different values. The semantics of it are similar to the le
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.157 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1t8SN2-0000Dt-9k
Subject: Re: [ibm-acpi-devel] [PATCH v4 20/20] Documentation: Add
 documentation about class interface for platform profiles
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
Cc: Alexis Belmonte <alexbelm48@gmail.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Gergo Koteles <soyer@irl.hu>,
 "Luke D . Jones" <luke@ljones.dev>, Ai Chao <aichao@kylinos.cn>,
 open list <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Lee Chun-Yi <jlee@suse.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Corentin Chary <corentin.chary@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ike Panhc <ike.pan@canonical.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mario,

On Tue, Nov 5, 2024, at 10:33 AM, Mario Limonciello wrote:
> The class interface allows changing multiple platform profiles on a system
> to different values. The semantics of it are similar to the legacy
> interface.
>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  .../userspace-api/sysfs-platform_profile.rst  | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
>
> diff --git a/Documentation/userspace-api/sysfs-platform_profile.rst 
> b/Documentation/userspace-api/sysfs-platform_profile.rst
> index 4fccde2e45639..418c61b096304 100644
> --- a/Documentation/userspace-api/sysfs-platform_profile.rst
> +++ b/Documentation/userspace-api/sysfs-platform_profile.rst
> @@ -40,3 +40,31 @@ added. Drivers which wish to introduce new profile 
> names must:
>   1. Explain why the existing profile names cannot be used.
>   2. Add the new profile name, along with a clear description of the
>      expected behaviour, to the sysfs-platform_profile ABI 
> documentation.
> +
> +Multiple driver support
> +=======================
> +When multiple drivers on a system advertise a platform profile 
> handler, the
> +platform profile handler core will only advertise the profiles that are
> +commong between all drivers to the ``/sys/firmware/acpi`` interfaces.

Typo (commong)

> +
> +This is to ensure there is no ambiguity on what the profile names mean 
> when
> +all handlers don't support a profile.
> +
> +Individual drivers will register a 'platform_profile' class device 
> that has
> +similar semantics as the ``/sys/firmware/acpi/platform_profile`` 
> interface.
> +
> +To discover available profiles from the class interface the user can 
> read the
> +``choices`` attribute.
> +
> +If a user wants to select a profile for a specific driver, they can do 
> so
> +by writing to the ``profile`` attribute of the driver's class device.
> +
> +This will allow users to set different profiles for different drivers 
> on the
> +same system. If the selected profile by individual drivers differes the

typo (differes)

> +platform profile handler core will display the profile 'custom' to 
> indicate
> +that the profiles are not the same.
> +
> +While the ``platform_profile`` attribute has the value ``custom``, 
> writing a
> +common profile from ``platform_profile_choices`` to the 
> platform_profile
> +attribute of the platform profile handler core will set the profile 
> for all
> +drivers.
> -- 
> 2.43.0

Thanks
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
