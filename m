Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 187991BAD06
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Apr 2020 20:41:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jT8h0-0001Af-5j; Mon, 27 Apr 2020 18:41:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <nanodario@gmail.com>) id 1jT8gz-0001AU-Dj
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Apr 2020 18:41:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8TB5J7LWLeaW8++7bKbHy2XpLIrZzUa1CUaU5nteOwc=; b=UkJUcSTIL0jLmXKOCAfjHe7bsB
 91yk8Jp1jQQY3rGR8NDCnlcIWrboVSWM1j4bfKU3bJTuhvniTE0WmiI1qsENHNyet6U8uv7pS1/Ck
 +8EbuNHGVosZ8WBdKQ4ygYh/PfnfOvbDxbsFHjCldqQupxA3WiRboJL8rQf/Z+eZKsyU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8TB5J7LWLeaW8++7bKbHy2XpLIrZzUa1CUaU5nteOwc=; b=lG4D4NEPL6Y16eBGMOKywk3agJ
 JyfEBdTiWhhcxBAW62+vKIuoPGALYT43hV5nz7fIPYrncAgciHv1EWF15MDbxLrmMmnhODo+bhPrT
 W1kB9HCcVW0t4ORnINmrB+xioCMOTLHxorozS/Cdvi8Ht7Vg+3I1DKAJoERjvLRKtLzI=;
Received: from mail-wr1-f41.google.com ([209.85.221.41])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jT8gy-00D6aq-4k
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 Apr 2020 18:41:21 +0000
Received: by mail-wr1-f41.google.com with SMTP id d17so21773566wrg.11
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 27 Apr 2020 11:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8TB5J7LWLeaW8++7bKbHy2XpLIrZzUa1CUaU5nteOwc=;
 b=BMu3SP9symPT7yalehZ0HvpYBF+xjY+qXJz/oFlRk80o+q6cprc4pNsjFdkkBrc91G
 IBZD7DCUjYWHq3ATSYWGYtiItOWeMe2Pz1qH/KWG7AJtQVQ2SKO9W3AcRlDQ++RWd/Sa
 jdGra6GOgkfNkYEM8jc+JAM8LJ87ivp+5RwWWTILXbIEW/s7fcDQ/3ICnJeuW2vs0WxN
 k49EbL4dCXW9zQ1OJPHXRbm0mljgxqsRgmUu89D1FjJ84FjxoJkdNeKIWZ77lHifRD8R
 q99HEdIP26sdrrampw0P7Gvtf/HnAyUVQ1+I6fEhag1XWENHTAP6guw7EUaMuK7jmrWS
 Ow4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8TB5J7LWLeaW8++7bKbHy2XpLIrZzUa1CUaU5nteOwc=;
 b=RvJv1Ry6qbx3qzc0RXhUMyxdoF8iLENoa0yeojLmOdELoWAprG3oYxLRtP5KbDUEnt
 fst1SsIjPv0Fujz2tAvzs6+j5oHF1xppJ4jLDY1THpS9lX85sPa3v5MI5IzfIzzzuhy1
 yXMbdtAj6YFpn5mE2ZOOi3dh7w1VFsms18IV93YTRK6s49YCR3sNyJvyDl18vebOgVXl
 Z9G7S+V7FRZ+e/aYfSNnzwLbQPGAvoufEF87E9TCKbJInxpF8ZcGr9+ryWdvXi35h4UD
 xnD3vBP3M2/gEBACTD2eNG67g6qEyRwWITatQ0Kse+xoobGgU/MU4kuv7alAzf6kmS6Z
 Verw==
X-Gm-Message-State: AGi0PuZzdCZSqiZkmN+RxB+3sBzZAEXqjH6wl6i1sFtzn3LZJEuV1t4l
 WMmUtCXizJWrBnarv94dxG8=
X-Google-Smtp-Source: APiQypLPxnoElAr6Ys8wtVWKqBGQhJBu3CR+X1TqJ9Yx2PydStTH7pBkBt9DGFUvW8eBeJOgHRR8kQ==
X-Received: by 2002:adf:f004:: with SMTP id j4mr28280876wro.123.1588012873482; 
 Mon, 27 Apr 2020 11:41:13 -0700 (PDT)
Received: from lenovodario.localnet
 (host196-76-dynamic.50-79-r.retail.telecomitalia.it. [79.50.76.196])
 by smtp.gmail.com with ESMTPSA id a67sm22350wmc.30.2020.04.27.11.41.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 11:41:12 -0700 (PDT)
From: Dario Messina <nanodario@gmail.com>
To: Lars <larsh@apache.org>
Date: Mon, 27 Apr 2020 20:41:11 +0200
Message-ID: <11041815.WYjWQN8m1R@lenovodario>
In-Reply-To: <20200423215709.72993-1-larsh@apache.org>
References: <20200423165457.54388-1-larsh@apache.org>
 <20200423215709.72993-1-larsh@apache.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (nanodario[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jT8gy-00D6aq-4k
Subject: Re: [ibm-acpi-devel] [PATCH v4] thinkpad_acpi: Add support for dual
 fan control on select models
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
Cc: agk@godking.net, kjslag@gmail.com, bastidoerner@gmail.com,
 ibm-acpi-devel@lists.sourceforge.net, ibm-acpi@hmh.eng.br,
 platform-driver-x86@vger.kernel.org, sassmann@kpanic.de, arc@osknowledge.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, Apr 23, 2020 at 23:57:59 CEST, Lars <larsh@apache.org> wrote:
> This adds dual fan control for the following models:
> P50, P51, P52, P70, P71, P72, P1 gen1, X1E gen1, P2 gen2, and X1E gen2.
> 
> Both fans are controlled together as if they were a single fan.
> [...]
> Background:
> I tested the BIOS default behavior on my X1E gen2 and both fans are always
> changed together. So rather than adding controls for each fan, this controls
> both fans together as the BIOS would do.
Hi Lars, why have you chosen to control multiple fans in this way?
I know that BIOS controls both fans together, but the EC has the capabilities 
to control both fans independently, so maybe it can be convenient to expose 
this feature.


Distinti saluti/Best regards,
Dario Messina




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
