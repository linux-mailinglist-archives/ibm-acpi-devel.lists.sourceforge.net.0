Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD135767DC
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 15 Jul 2022 21:57:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1oCRQK-0008BE-Ja; Fri, 15 Jul 2022 19:56:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ibm-acpi-devel@tlund.pp.se>) id 1oCRQG-0008B3-Fs
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 15 Jul 2022 19:56:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s4Yqtt2jnBHaKdT4bkouneH6YlHWj6PUOG6KuHSDhGI=; b=i4JfidUg3PL3nhdTGyxUCgpTyy
 TaF/xj+CoNYIg41JAwN6U1n6iG9lQza2oOMrBSFyfem+j9oD8qQV+08TSASxGRN66R+xER/qS/af+
 a2RbXkZNVfmiE3YtMuG/jiSAD9RODcqqlhCCQEPv4rccxuhBeVTjXi5piwI9bCU5A9OQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=s4Yqtt2jnBHaKdT4bkouneH6YlHWj6PUOG6KuHSDhGI=; b=K
 dttbxVIl8qztvqpAbCMLF0g3ZyouCIklbSoTGhW/SWIKIoVu/b3oq7OHl66mvlJOX9dkILlt5xUDv
 4a3IFXOPLc55swMrDtgkwHdrqaIdMrBozYHIp0o+4wPNGlcW60LdAij87YvoiA9atsRPU2Wxf/P2+
 J9+xuIEbVsBvWMIY=;
Received: from envy.nxs.se ([212.247.200.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCRQE-000QPq-Tz
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 15 Jul 2022 19:56:25 +0000
Received: by envy.nxs.se (Postfix, from userid 1000)
 id 409CEEDAF3; Fri, 15 Jul 2022 21:39:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by envy.nxs.se (Postfix) with ESMTP id 2B1B26BAB4;
 Fri, 15 Jul 2022 21:39:11 +0200 (CEST)
Date: Fri, 15 Jul 2022 21:39:11 +0200 (CEST)
From: Tomas Agartz <ibm-acpi-devel@tlund.pp.se>
X-X-Sender: tlund@envy.nxs.se
To: ibm-acpi-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.21.2207152128550.13226@envy.nxs.se>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 I have a ThinkPad X1 Carbon Gen 9 (Product Name: 20XW005PMX)
 and have an unhandled HKEY events to report. This happens when I press Fn
 + T. thinkpad_acpi: unhandled HKEY event 0x131a 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.247.200.182 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.247.200.182 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oCRQE-000QPq-Tz
Subject: [ibm-acpi-devel] thinkpad_acpi: unhandled HKEY event 0x131a
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hello,

I have a ThinkPad X1 Carbon Gen 9 (Product Name: 20XW005PMX) and have an 
unhandled HKEY events to report. This happens when I press Fn + T.

thinkpad_acpi: unhandled HKEY event 0x131a

//tlund


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
