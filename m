Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AEC5B025
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 30 Jun 2019 16:37:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hhaxC-0000ma-L0; Sun, 30 Jun 2019 14:37:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fsteiner-mail1@bio.ifi.lmu.de>) id 1hhax9-0000lt-Oq
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 30 Jun 2019 14:37:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Voyi8r1zfS4GrEc965F/dOfGtm4Jy7VvamCkH16RQ3s=; b=TSBxde3vo0ImDm+klEy0+frEoQ
 v0FZZ/BfcYro065ouvgKYSHyhtgTfdStVutKlAWLNhZELd464RMSBmw5ntAr36WdfTPhD8Os/OLtN
 yeCwalbGQHCTMC7kZ0wC5vV6RXOrYe2ZJawTgvF7V8StkfYCV7cCKp++QdVtEKeHfd8o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Voyi8r1zfS4GrEc965F/dOfGtm4Jy7VvamCkH16RQ3s=; b=TK/Eh0Waiblo38xA0vxXiRuhRJ
 XINCS/JsIZM841C1Z9yHZi1lmrNMoaq+pXqbxKGk0XeC4GaS52jrZImAAX5BhU9HCIQyjQSHd3kun
 W1dL+wPeolOshgKF+ce3D7R+A57yAUPRmTnplscc4yNTdrMFjIPDKP3qR8QY3YZhhYVY=;
Received: from cp120.sp-server.net ([195.30.85.120])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hhaxA-00H3tM-Bs
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 30 Jun 2019 14:37:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=familiesteiner.de; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Voyi8r1zfS4GrEc965F/dOfGtm4Jy7VvamCkH16RQ3s=; b=hl9/XKfhNMaFpMqhO/SaQ3a/NZ
 6oy/2vholZP1/7roczpX2gQqaTJRROaw45n2EnSdNrf8HiDZIZAMhCAe7851JF/YYv3HI3gmt3yq0
 VaYX2pLkrDZWhzXCLi+yK6h854+i6L7tqSPJYEYlOHtsFkUBOPUvljJPu03P9uzrpEd26F5U8KzAm
 SIN9gJREfF51cmYk64oNCcTlKahmXPuPD1yOAIg/wWTOejIS4MD8Yk3r7uGcG+vpcbOvYnwB7GdH/
 Dl49kNWIJm0cJXRTsG7J8jUcvbuMi8VMg0Mm3EuGxlj97KJLOVdKdpVVXzGb1CZ7uhHT6JvMcacod
 W+8GmEjw==;
Received: from [2a02:810d:e80:408c:3e97:eff:fecf:d7f6] (port=41992)
 by cp120.sp-server.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <fsteiner-mail1@bio.ifi.lmu.de>)
 id 1hhaLr-004E3U-VN; Sun, 30 Jun 2019 15:58:43 +0200
To: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <95e3df5e-a19a-1d3b-8d29-35ce645698b2@bio.ifi.lmu.de>
 <20190629214502.w4yeyfp2qpov4mtv@khazad-dum.debian.net>
From: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Message-ID: <9a5f5954-60ae-8dfa-5b3a-0b3fac2590c6@bio.ifi.lmu.de>
Date: Sun, 30 Jun 2019 15:58:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190629214502.w4yeyfp2qpov4mtv@khazad-dum.debian.net>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp120.sp-server.net
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - bio.ifi.lmu.de
X-Get-Message-Sender-Via: cp120.sp-server.net: authenticated_id:
 steiner@familiesteiner.de
X-Authenticated-Sender: cp120.sp-server.net: steiner@familiesteiner.de
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lmu.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hhaxA-00H3tM-Bs
Subject: Re: [ibm-acpi-devel] lde disk-activity trigger on Thinkpad T570/580
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Henrique,

Henrique de Moraes Holschuh wrote:

> If any other trigger (e.g. heartbeat) works, that means the issue is

thanks for your help! Yes, other triggers work!

> with the disk-activity trigger not being connected to NVME, and there is
> nothing thinkpad-acpi can do about it...

Ok! I was just wondering because NVME disks in our PCs do work with
disk-activity. Is this connection you mention a hardware problem?
Or could it be worth to ask for a possible fix on the lkml?

cu,
Frank
-- 
Dipl.-Inform. Frank Steiner   Web:  http://www.bio.ifi.lmu.de/~steiner/
Lehrstuhl f. Bioinformatik    Mail: http://www.bio.ifi.lmu.de/~steiner/m/
LMU, Amalienstr. 17           Phone: +49 89 2180-4049
80333 Muenchen, Germany       Fax:   +49 89 2180-99-4049
* Rekursion kann man erst verstehen, wenn man Rekursion verstanden hat. *


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
