Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E76C8116379
	for <lists+ibm-acpi-devel@lfdr.de>; Sun,  8 Dec 2019 19:57:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ie1jq-0004ji-9k; Sun, 08 Dec 2019 18:57:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hmh@hmh.eng.br>) id 1ie1jl-0004jL-10
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 08 Dec 2019 18:56:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5FTl0EJd5hwNcfC9+A3sliDUK4QgB2wB3KTWKngXIPQ=; b=kSyKz8dLn5VM05CtDAT5BDP/rx
 VDVKbqha6o+JEDU3yYWUiWygj+IsCPkcvoW7IcxU5hbNXRDiT81jWuINWg1AYiJy2McdcHvXSIyVA
 NqMlTHkyj8kh2P8yHc7rCKcWlQYHk4MT0Xg34MCghwDzcCaBpd9DCE8hzjyRzqWC6+so=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5FTl0EJd5hwNcfC9+A3sliDUK4QgB2wB3KTWKngXIPQ=; b=V1pCJwroBUb9unv91JBjJgOLgQ
 6TwRUlOazji2hwK1w4z/irKgYgOqtC1Wd0BYVVGh565synxp6azZMwCih6IsqR1eBqBrA4rJfUVR5
 dSed362zKC67eLmiBFJJd/EFW56hl0quik2jikVQDPRH1tbV+b/xME3r9uR4x1EZT56o=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ie1ji-00E6Fu-Gg
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 08 Dec 2019 18:56:56 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 726535A3;
 Sun,  8 Dec 2019 13:40:09 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 08 Dec 2019 13:40:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmh.eng.br; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=5FTl0EJd5hwNcfC9+A3sliDUK4Q
 gB2wB3KTWKngXIPQ=; b=q4WC/lFbnHRqTHWbdGvLVMHAZQykzBiRYRabU8S534A
 vGvkV3CX27S5bDqXILhkV6WtPx+4iZ/vNXT37O8LZwAFFAvdQrmz59/LZfmWFWgm
 2p2DduZmYNuTOVIW2J7g9ZMrCv9xs9P/8ZGJbOWLeFQM+5ndXUPdkGziRJfPL87s
 KlE3Lm7jOasoVNnMR5eKaUeedBG3rgcHDTF3R57DX+L8vNNMsW50PlDVlzAxLWiY
 lKtSGQHWnjhi4Mb+Z36JHvUEyTSG81EkWA7QhtEKQFm/5gdeYmFaeBVLpPlGpvel
 XGytLmXn9TRepC7dKJF9QFjy7xe8104mTUXx9lYKPag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=5FTl0E
 Jd5hwNcfC9+A3sliDUK4QgB2wB3KTWKngXIPQ=; b=ssle65mwlywXkw7l9eQTP9
 NRezKmv43JNwqAwLDhoslIrqcOyOiF7G9dK2PakK1jrLGJPhQ7n3p4mak9HjIuBz
 v3N14PiVnizJDvoaV2RT5iSpQ5cxG+x81lXiwVwPBgdBWSsWfVYUTbVuB5SA5mFQ
 aWBqrzPXzpcRhQou18r6kSvTokTI13MWyGAdaYsHSJ2ZgUcTF6QTptnzIC52jhB/
 VRT5PKuIdvWpuQQmYNf/sm80wvi/FyYBxbYoTbKVO5uSGQO7E/gZ8Lx1imj0CJGw
 +5rH8wEKaIjZBT1Lu3iNoSXh8LDxFkDnzAeM+R6K0YcpLwirQ+gbsFfeWIOVK0Ww
 ==
X-ME-Sender: <xms:iEPtXdPhfWLA43-zFP_cKMh4m_fSm0Lfw8gINXOK-rTui8xAygYLaA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudekjedgudduiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesth
 dttddttdervdenucfhrhhomhepjfgvnhhrihhquhgvucguvgcuofhorhgrvghsucfjohhl
 shgthhhuhhcuoehhmhhhsehhmhhhrdgvnhhgrdgsrheqnecukfhppedvtddurdekvddrge
 ehrddvfeegnecurfgrrhgrmhepmhgrihhlfhhrohhmpehhmhhhsehhmhhhrdgvnhhgrdgs
 rhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:iEPtXYGK_1tLYiGT5-R-kKU4eVH2sBuMyt25_qEtRY6Y--dKtaXSHQ>
 <xmx:iEPtXbzswhjj3CQX-MH2iQoEkKUY9HRH5EC2-v-_pRJrupDAfs9Nsg>
 <xmx:iEPtXZoyakNQpridtlYhPmbPxEX6mXTr_-1uS1h3TvjRQtjYWK9O7w>
 <xmx:iUPtXUUehft4FoZFhsz8CtSSwGqdn7y5gSL8VqJwA5uAqekdPD8Sug>
Received: from khazad-dum.debian.net (unknown [201.82.45.234])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2C8FE8005C;
 Sun,  8 Dec 2019 13:40:08 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by localhost.khazad-dum.debian.net (Postfix) with ESMTP id 71ABC3400174;
 Sun,  8 Dec 2019 15:40:06 -0300 (-03)
X-Virus-Scanned: Debian amavisd-new at khazad-dum.debian.net
Received: from khazad-dum.debian.net ([127.0.0.1])
 by localhost (khazad-dum2.khazad-dum.debian.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id csg7xBToHYwr; Sun,  8 Dec 2019 15:40:05 -0300 (-03)
Received: by khazad-dum.debian.net (Postfix, from userid 1000)
 id 36DBD340016E; Sun,  8 Dec 2019 15:40:05 -0300 (-03)
Date: Sun, 8 Dec 2019 15:40:05 -0300
From: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
To: Jenny <contact@jenny.earth>
Message-ID: <20191208184005.GA14832@khazad-dum.debian.net>
References: <9a9c50376b55c8249b33a905066b0a76b294f4f1.camel@jenny.earth>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a9c50376b55c8249b33a905066b0a76b294f4f1.camel@jenny.earth>
X-GPG-Fingerprint1: 4096R/0x0BD9E81139CB4807: C467 A717 507B BAFE D3C1  6092
 0BD9 E811 39CB 4807
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ie1ji-00E6Fu-Gg
Subject: Re: [ibm-acpi-devel] thinkpad_acpi: unhandled HKEY event ,
 kernel NULL pointer dereference
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
Cc: ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, 02 Dec 2019, Jenny wrote:
> Whenever I reattach the keyboard cover, the tablet becomes unresponsive
> to inputs shortly after and has to be rebooted forcefully.

...

> [  157.064177] int3403 thermal INT3403:01: Unsupported event [0x91]
> [  157.064181] int3403 thermal INT3403:00: Unsupported event [0x91]
> [  159.581940] thinkpad_acpi: unhandled HKEY event 0x4012
> [  159.581942] thinkpad_acpi: please report the conditions when this
> event happened to ibm-acpi-devel@lists.sourceforge.net
> [  159.583681] int3403 thermal INT3403:01: Unsupported event [0x91]
> [  159.583684] int3403 thermal INT3403:00: Unsupported event [0x91]

The above are Red Herrings, but...

> [  173.851420] usb 1-7: USB disconnect, device number 4
> [  173.897429] hid-rmi 0003:17EF:6085.0009: failed to write hid report
> (-19)
> [  173.897438] hid-rmi 0003:17EF:6085.0009: rmi_set_page: set page
> failed: -19.
> [  173.897444] rmi4_physical rmi4-01: rmi_driver_clear_irq_bits: Failed
> to change enabled interrupts!
> [  173.921419] BUG: kernel NULL pointer dereference, address:
> 0000000000000040
> [  173.921432] #PF: supervisor read access in kernel mode
> [  173.921440] #PF: error_code(0x0000) - not-present page
> [  173.921445] PGD 0 P4D 0 
> [  173.921460] Oops: 0000 [#1] SMP NOPTI
> [  173.921473] CPU: 3 PID: 27 Comm: kworker/3:0 Not tainted 5.3.12-
> 300.fc31.x86_64 #1
> [  173.921480] Hardware name: LENOVO 20GHS1UK00/20GHS1UK00, BIOS
> N1LET86W (1.86 ) 06/26/2019
> [  173.921500] Workqueue: usb_hub_wq hub_event
> [  173.921517] RIP: 0010:__irq_domain_deactivate_irq+0x14/0x40
> [  173.921527] Code: 05 e9 c0 28 ab 00 c3 66 66 2e 0f 1f 84 00 00 00 00
> 00 0f 1f 40 00 0f 1f 44 00 00 48 85 ff 74 2f 53 48 89 fb eb 1e 48 8b 47
> 18 <48> 8b 40 40 48 85 c0 74 08 48 89 de e8 8b 28 ab 00 48 8b 5b 28 48
> [  173.921536] RSP: 0018:ffffbbf6801638b8 EFLAGS: 00010082
> [  173.921545] RAX: 0000000000000000 RBX: ffff9f8251818c28 RCX:
> 0000000000000085
> [  173.921552] RDX: 0000000000000001 RSI: 0000000000000246 RDI:
> ffff9f8288891b40
> [  173.921559] RBP: ffff9f8251818ca4 R08: 0000000000000000 R09:
> ffff9f828def3280
> [  173.921564] R10: 0000000000000000 R11: ffffffffbd4554c8 R12:
> ffff9f8251bf4c00
> [  173.921570] R13: ffff9f8251818d60 R14: 0000000000000246 R15:
> ffff9f8251818c28
> [  173.921579] FS:  0000000000000000(0000) GS:ffff9f8291380000(0000)
> knlGS:0000000000000000
> [  173.921587] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  173.921594] CR2: 0000000000000040 CR3: 0000000407012006 CR4:
> 00000000003606e0
> [  173.921601] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
> 0000000000000000
> [  173.921607] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
> 0000000000000400
> [  173.921613] Call Trace:
> [  173.921632]  irq_domain_deactivate_irq+0x1a/0x30
> [  173.921646]  __free_irq+0x242/0x300
> [  173.921658]  free_irq+0x37/0x60
> [  173.921670]  release_nodes+0x239/0x280
> [  173.921691]  device_release_driver_internal+0xe8/0x1b0
> [  173.921703]  bus_remove_device+0xdb/0x140
> [  173.921718]  device_del+0x163/0x360
> [  173.921740]  rmi_unregister_function+0x30/0x70 [rmi_core]
> [  173.921762]  rmi_free_function_list+0x96/0x110 [rmi_core]
> [  173.921784]  rmi_driver_remove+0x48/0x50 [rmi_core]
> [  173.921798]  device_release_driver_internal+0xd8/0x1b0
> [  173.921809]  bus_remove_device+0xdb/0x140
> [  173.921823]  device_del+0x163/0x360
> [  173.921842]  rmi_unregister_transport_device+0x12/0x20 [rmi_core]
> [  173.921857]  rmi_remove+0x41/0x50 [hid_rmi]
> [  173.921874]  hid_device_remove+0x4c/0xb0
> [  173.921887]  device_release_driver_internal+0xd8/0x1b0
> [  173.921898]  bus_remove_device+0xdb/0x140
> [  173.921911]  device_del+0x163/0x360
> [  173.921926]  hid_destroy_device+0x42/0x60
> [  173.921940]  usbhid_disconnect+0x4a/0x60
> [  173.921953]  usb_unbind_interface+0x84/0x250
> [  173.921967]  device_release_driver_internal+0xd8/0x1b0
> [  173.921978]  bus_remove_device+0xdb/0x140
> [  173.921991]  device_del+0x163/0x360
> [  173.922004]  usb_disable_device+0x93/0x240
> [  173.922018]  usb_disconnect+0xba/0x260
> [  173.922032]  hub_event+0xd23/0x1490
> [  173.922048]  process_one_work+0x19d/0x340
> [  173.922057]  worker_thread+0x50/0x3b0
> [  173.922071]  kthread+0xfb/0x130
> [  173.922081]  ? process_one_work+0x340/0x340
> [  173.922093]  ? kthread_park+0x80/0x80
> [  173.922104]  ret_from_fork+0x1f/0x40

This one isn't.  It shows the RMI driver blowing up in flames because of
some bug either in the RMI driver itself, or somewhere else in the USB
stack.

I don't think thinkpad-acpi can help much on this one, it would be
better to file a bug against the RMI driver or ask for help in LKML.

-- 
  Henrique Holschuh


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
