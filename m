Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D856D57B4AF
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 20 Jul 2022 12:42:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1oE79d-00085v-30; Wed, 20 Jul 2022 10:42:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ibm-acpi-devel@tlund.pp.se>) id 1oE79a-00085p-Mv
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 20 Jul 2022 10:42:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=StCRJDA5Cm696EZYXjdQ1luo7CkfL94iRRU4oNk3d98=; b=PjrIryJvhmIozcRm+9souJpG9O
 OTBT2+HLVlv51qP9C1Bt1i5c52RfN6Tdy3GABsxSzlVU4kVVZjtyVf+pCC4Pg9ab1dvj1XRweht2G
 44oP6CeUAIDTxsp6B963v6X6Hrat07AUC2/mXtNqP6JP84JG9/xEQF0puiW6nQeti8dY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=StCRJDA5Cm696EZYXjdQ1luo7CkfL94iRRU4oNk3d98=; b=DfRYbjT7K8kNYFWj9My2uR0hOR
 eH445L5r1MBdm6GVrwS2QYkQk/o+uscCu+drqpRIO7FxcOGkM6QNb0oeIzfRQU//TaHIC2kYXC+zi
 cHTrrsHYrSHLP4y3qTsXmw4JXr0/GRWh20OJaSzxIKjfIl65MgUXXNaHlQuLlhopkmlo=;
Received: from envy.nxs.se ([212.247.200.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oE79X-004w3O-Or
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 20 Jul 2022 10:42:07 +0000
Received: by envy.nxs.se (Postfix, from userid 1000)
 id 2D3AC136A86; Wed, 20 Jul 2022 12:41:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by envy.nxs.se (Postfix) with ESMTP id 0E7907755E
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 20 Jul 2022 12:41:52 +0200 (CEST)
Date: Wed, 20 Jul 2022 12:41:52 +0200 (CEST)
From: Tomas Agartz <ibm-acpi-devel@tlund.pp.se>
X-X-Sender: tlund@envy.nxs.se
To: ibm-acpi-devel@lists.sourceforge.net
In-Reply-To: <alpine.DEB.2.21.2207152128550.13226@envy.nxs.se>
Message-ID: <alpine.DEB.2.21.2207201236310.13226@envy.nxs.se>
References: <alpine.DEB.2.21.2207152128550.13226@envy.nxs.se>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 15 Jul 2022, Tomas Agartz wrote: > I have a ThinkPad
 X1 Carbon Gen 9 (Product Name: 20XW005PMX) and have an > unhandled HKEY events
 to report. This happens when I press Fn + T. > > thinkpad_acpi: unhandled
 HKEY event 0x131a 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.247.200.182 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.247.200.182 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oE79X-004w3O-Or
Subject: Re: [ibm-acpi-devel] thinkpad_acpi: unhandled HKEY event 0x131a
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

On Fri, 15 Jul 2022, Tomas Agartz wrote:

> I have a ThinkPad X1 Carbon Gen 9 (Product Name: 20XW005PMX) and have an 
> unhandled HKEY events to report. This happens when I press Fn + T.
>
> thinkpad_acpi: unhandled HKEY event 0x131a

Some more info:

In some Lenovo application that came bundled with the Windows install, I 
found that Fn+T is supposed to "change Intelligent cooling automatic mode 
setting".

//tlund


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
