Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7DA4882C4
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  8 Jan 2022 10:24:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1n67wb-0007UO-U1; Sat, 08 Jan 2022 09:23:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <david@dreschner.net>) id 1n67wZ-0007UE-Lw
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 08 Jan 2022 09:23:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:To:References:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dFEiafvGMRb+EKhpOswuLJtyTXVbcTlAFpIWcpCwORc=; b=KQzH62UeTYGmOHU9JzoaVTqLd
 pYiHLaLqP4p2ZsNO+G9twIo08zzDnq92aoQiu5k5aEHqFfCJ/di6UWubfjMYGFL3MbnNfCgKIXbHN
 rjowKlmoNBdzHAX3ykFI9oWDnoF/JBsbcX5XpnYY/r86vIugpu0u4zh2G4jlhBuVQVyY8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:To:References:
 Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dFEiafvGMRb+EKhpOswuLJtyTXVbcTlAFpIWcpCwORc=; b=F9yVIutSB5XomiOwtqrmnPWl6W
 BL6UxbE82Ix2d7IE0lsnHg3F+kYp0r3fSgGVRlm5m9xmkOFmGBsN3PopSk2lzZIOKDvzCPV1USOeG
 FzDou2kWMChwocjwIasW7BL4fN4AKgogiGWUraH8HEPVndPwx324U+K7mmTXjg1M80cI=;
Received: from server.foto-kaesberg.de ([173.249.50.97])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n67wU-0007JB-3A
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 08 Jan 2022 09:23:22 +0000
Received: from [IPv6:2003:c7:f729:3200::f4]
 (p200300c7f729320000000000000000f4.dip0.t-ipconnect.de
 [IPv6:2003:c7:f729:3200::f4])
 by server.foto-kaesberg.de (Postfix) with ESMTPSA id D314410CD0D1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat,  8 Jan 2022 10:23:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dreschner.net;
 s=default; t=1641633783;
 bh=dFEiafvGMRb+EKhpOswuLJtyTXVbcTlAFpIWcpCwORc=; h=Subject:To:From;
 b=D31ydFciNnwcIuGzLfMxkyrWM1xKkwX1BXVpgaOsUAOqEtWqsYNaJZts6bzOcuFz6
 dothUSMObG0fN7K83QWRpoHl01M6qj3cQxzLSJU2ni6OJwCvhOQnb1IOqNZnhXDelh
 qK0Lijqi0ucS+617ubvck4yAScLYFZXnIKbtWVtg=
Authentication-Results: server.foto-kaesberg.de;
 spf=pass (sender IP is 2003:c7:f729:3200::f4)
 smtp.mailfrom=david@dreschner.net smtp.helo=[IPv6:2003:c7:f729:3200::f4]
Received-SPF: pass (server.foto-kaesberg.de: connection is authenticated)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.4 at server.foto-kaesberg.de
References: <ec04aa1e-1ac3-edbc-ac08-eec15ec5c952@dreschner.net>
To: ibm-acpi-devel@lists.sourceforge.net
From: David Dreschner <david@dreschner.net>
X-Forwarded-Message-Id: <ec04aa1e-1ac3-edbc-ac08-eec15ec5c952@dreschner.net>
Message-ID: <58eeca03-27a3-c8b7-00d4-7dae8f22eff2@dreschner.net>
Date: Sat, 8 Jan 2022 10:23:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <ec04aa1e-1ac3-edbc-ac08-eec15ec5c952@dreschner.net>
Content-Type: multipart/mixed; boundary="------------D6CF53CA1BA5EBB7526C7939"
Content-Language: en-US
X-PPP-Message-ID: <164163378342.22251.9326721175917959560@server.foto-kaesberg.de>
X-PPP-Vhost: dreschner.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hey again,
 I realized the following message didn't get through.
 Therefore, I send it again right now. Sorry for any inconvenience! 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n67wU-0007JB-3A
Subject: [ibm-acpi-devel] [PATCH] Update whitelisted ThinkPad models with
 dual fan support in thinkpad_acpi
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
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--------------D6CF53CA1BA5EBB7526C7939
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hey again,

I realized the following message didn't get through. Therefore, I send 
it again right now.

Sorry for any inconvenience!

Best reguards,
David


-------- Forwarded Message --------
Subject: [PATCH] Update whitelisted ThinkPad models with dual fan 
support in thinkpad_acpi
Date: Tue, 4 Jan 2022 04:41:45 +0100
From: David Dreschner <david@dreschner.net>
To: ibm-acpi-devel@lists.sourceforge.net
CC: platform-driver-x86@vger.kernel.org

Hey guys,

the attached patch updates the list of whitelisted ThinkPad models with 
dual fan support.

The changes were tested on my ThinkPad T15g Gen 2. According to Lenovo, 
the BIOS version is the same for the P15 Gen 2 and the P17 Gen 2 ( 
https://pcsupport.lenovo.com/us/en/downloads/ds551321-bios-update-utility-bootable-cd-for-windows-10-64-bit-thinkpad-p15-gen-2-p17-gen-2-t15g-gen-2 
).

I also added the P15v Gen 2 and T15p Gen 2 to the whitelist based on the 
BIOS version listed on the Lenovo homepage ( 
https://pcsupport.lenovo.com/us/en/downloads/ds551356-bios-update-utility-bootable-cd-for-windows-10-64-bit-thinkpad-p15v-gen-2-t15p-gen-2 
). The first generation had two fans and where covered by the whitelist 
entry for the P15 Gen 2. As the second generation has two fans, too, I 
made that change for completeness.

To apply the changes before it's merged in the mainline linux kernel, I 
made a little dkms patch: 
https://github.com/dreschner/thinkpad_acpi-dual-fan-patch

Best reguards,
David


--------------D6CF53CA1BA5EBB7526C7939
Content-Type: text/x-patch; charset=UTF-8;
 name="update_whitelisted_thinkpad_models.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="update_whitelisted_thinkpad_models.patch"

8845c8845
< 	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 (1st gen) / P15v (1st gen) */
---
> 	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 / P17 / T15g / T15p / P15v (1st gen) */
8846a8847,8848
> 	TPACPI_Q_LNV3('N', '3', '7', TPACPI_FAN_2CTL),	/* P15 / P17 / T15g (2nd gen) */
> 	TPACPI_Q_LNV3('N', '3', '8', TPACPI_FAN_2CTL),	/* P15v / T15p (2nd gen) */


--------------D6CF53CA1BA5EBB7526C7939
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--------------D6CF53CA1BA5EBB7526C7939
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--------------D6CF53CA1BA5EBB7526C7939--

