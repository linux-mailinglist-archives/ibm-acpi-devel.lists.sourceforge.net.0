Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C86D2C4BC3
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 26 Nov 2020 01:05:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ki4mm-0004aR-EW; Thu, 26 Nov 2020 00:05:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tamiko@peregrine.43-1.org>) id 1ki4ml-0004aH-S4
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 26 Nov 2020 00:05:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OmlvmE867Cs2Od8bXgoIB3KtgX2bUer58mhVcUSWeE8=; b=khbtEqmpXqBzMLGjfE5ZkzcqHy
 botIQlDKzI6taWHrtwa9OdlaBWzjMTipu78JzaeaeP5HE7CKlk6GVf5W1fHd8u86XEEROGwajzHJN
 SAgyIK1untylN2YmEYevRG4EiiVi7teedFDekA3GH6L0pp0+gR61nAY/wx+OAVoUQI6Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OmlvmE867Cs2Od8bXgoIB3KtgX2bUer58mhVcUSWeE8=; b=d
 x6R3HDX/mpIwLgnnS76uGZB+ihWygN36tD+6+n+n3SQrdyi6E6GqusiJGAbpqtuXygkgQldAxXfOf
 yILwpZBJb0k0T6rj9qLSrlm2EnsLPhcFqRUfRAyUClmg08KWF0tZz9Z2Q0ENcL68r39vNZJyDYnpa
 L2YN9QU7Uev+gn3A=;
Received: from tsukuyomi.43-1.org ([116.203.33.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ki4mY-004lro-LZ
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 26 Nov 2020 00:05:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=43-1.org;
 i=@43-1.org; q=dns/txt; s=2019; t=1606349096; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding
 : from; bh=F0VetqWwnrmpuytkW4dYvQLYwCtFpUHCdHAukfG4N7Y=;
 b=ivTlVwT1hikWi3NnTePhZfyK+cGwPt8PCfuLTP1e5MY3mmxroMdMf9LfVEf3JZGGyHRR3
 dudppxGs0b+po6OevRFUJgnbBn5MymONGEs5UOFVO7j7++6cejyihUGQBPQIcaafVLh9MI3
 2qdW3NLCsin0giRFcfuTRo7YdnTTbFFByyb9PjA5QBTMboUNznPcF3PKwYhIUwb8zQisjnr
 ZW4MOGirZ7s2z7ClCGJPJHFASnNSidoqjNdyUozRObyW6rHP+PQ54+VV/m4v9yOjJUQGkBe
 mjcbKtXLswpxKMcbIw+KNf85z/LF4twCmZb/muUgQjEGxWsqEkiPFaj3T0jA==
From: tamiko-ibm-acpi-devel@43-1.org
To: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>
Date: Wed, 25 Nov 2020 18:04:15 -0600
Message-Id: <20201126000416.2459645-1-tamiko-ibm-acpi-devel@43-1.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ki4mY-004lro-LZ
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Whitelist P15
 firmware for dual
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
Cc: ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Dear all,

The new Lenovo Thinkpad P15/P15v series are both equipped with two fans
(with independent fan control).

Simply enabling TPACPI_FAN_2CTL for the respective firmware is enough to
make fan control work.

I have tested the following patch on my P15 (with "N30..." firmware): I can
control the second fan via /proc/acpi/ibm/fan, and the second fan now shows
up in lm-sensors:

    $ sensors
    [...]
    thinkpad-isa-0000
    Adapter: ISA adapter
    fan1:           0 RPM
    fan2:           0 RPM

Best,
Matthias



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
