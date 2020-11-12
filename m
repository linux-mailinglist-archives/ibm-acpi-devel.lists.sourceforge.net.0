Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1522AFFF8
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 12 Nov 2020 08:00:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kd6aI-0001aF-Sh; Thu, 12 Nov 2020 06:59:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tamiko@peregrine.43-1.org>) id 1kd6aF-0001Zn-5G
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 12 Nov 2020 06:59:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gg5Ctfv8Wmb8Su1n6DTcsyN5WdwSOxC1w1ddMzjFKMc=; b=DRfIwE+BjZHEWEKbZv7/AVdBUd
 6yT7Cp7YkJ57sAIcQuQQr5eEjHophwLkNwDW66+VrsOEhXIrTWg0P4giI1SBq9M7x5ScG7EWvLsqo
 sPru2Tm2uJ2PqiLy2+eW4W6ygcVxqf8MbIxfY0VT0XGAA1Aga8hDgtkKaxph3xDuZJWo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gg5Ctfv8Wmb8Su1n6DTcsyN5WdwSOxC1w1ddMzjFKMc=; b=j
 3ukVqywF1FE6XcFUO/9vvWisD5Ujb4fAeC8q5n1mtQAul4rvXiRGszr8PP9e4o4X7Muxi330rl0dQ
 6d3f32nzQOuJQSSncIclb1iAlsKWOkmgqnpOL5Yfr0hBz7JcfNhaqBVxhkl35145jWsqH4E16FkNM
 uhNLaDdc760hWZlo=;
Received: from tsukuyomi.43-1.org ([116.203.33.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kd6a7-008mdu-Ue
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 12 Nov 2020 06:59:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=43-1.org;
 i=@43-1.org; q=dns/txt; s=2019; t=1605163614; h=from : to : subject :
 date : message-id : mime-version : content-transfer-encoding : from;
 bh=BCd7tuufI5YjpPsAodr4oKI/CBUYuAfl/Byj4rFeWRw=;
 b=Fq32C0eTO5t8UTwdGe0lE5IghQP0dfSa/l7HOjAEeVseovyDUtbOW78voNDRchX/DtMPN
 XWu32gjRqVjM1EbQg1Xy89vjZdI9GjLFZijI8vNv+SwC7p9HwjU4YhlTuePzS4jNVwYsVYA
 pY0PRP/puWSi4lE3XDIVqFajxyVMGq/+CqDWo8eQBRU0Xvud+6piePZHN2aYRx7FgkB3TpG
 BEDKYTW6I67AbOJXzWqIozSjQzMKhxtFTUN9JIg/n4Ir/VWtYk7y9i7IIgdAbdHpkkPg8sD
 syz5wjRQXxANgc4t8wb2hlgPnChJg4bwTGjTsGHjGdJE51HiiHnn6BMhCFaA==
From: tamiko-ibm-acpi-devel@43-1.org
To: ibm-acpi-devel@lists.sourceforge.net
Date: Thu, 12 Nov 2020 00:46:45 -0600
Message-Id: <20201112064646.12125-1-tamiko-ibm-acpi-devel@43-1.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
X-Headers-End: 1kd6a7-008mdu-Ue
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Dear all,

The new Thinkpad P15/P15s/P15v series all have dual fans. Simply enabling
TPACPI_FAN_2CTL for the respective firmware is enough.

I have tested the following patch on my P15 (with "N30..." firmware): I can
control the second fan via /proc/acpi/ibm/fan, and the second fan now shows
up in lm-sensors:

    $ sensors
    [...]
    thinkpad-isa-0000
    Adapter: ISA adapter
    fan1:           0 RPM
    fan2:           0 RPM

I have verified the corresponding entries for the P15v and P15s by
looking at the name of the corresponding firmware blobs offered for
download on the Lenovo website.

Best,
Matthias




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
