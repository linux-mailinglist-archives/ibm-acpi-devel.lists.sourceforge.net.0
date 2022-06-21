Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB82C553412
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 21 Jun 2022 15:56:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o3eLp-0002fb-Ng; Tue, 21 Jun 2022 13:55:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jdelvare@suse.de>) id 1o3eLo-0002fV-BG
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Jun 2022 13:55:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hxGYd5ZnRx56+hHaQihL62oAtAywdY5xxIHba7yJA1g=; b=VybUNo2ne2qdooKVoSMZV9ZIvX
 zkXWg83ARvTB5CgT2RBIR/hFaUZmPrhVxVT1ZrSFVXpQGdR5QEX3dpSLrau7HjgEsIjJMpofyqfUW
 p7lyJ+NBn4x8XzR2YloGffsJZJ2yQWSjC+r7KtEF+cN91FMhOX87fu426zuu8IgIQM2M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc
 :To:From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hxGYd5ZnRx56+hHaQihL62oAtAywdY5xxIHba7yJA1g=; b=S
 ZpDVIgOWZT8g7LIAK6d2tD4xHYDYUARBR88sJC8tYhTphu6Kjbj2YepNGYNBkmYZX5UMt+IuF+KrX
 IEDrvxn/WpCsvFkls9p4AFgGjjuvnDbFAugmwhHbnbb5XdjxfOdvVjFi5huF4qQeywjwSI6dB+fFu
 9v/kUaLGQ1CTsfL4=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o3eLi-0004fY-Hs
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Jun 2022 13:55:24 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 920971F8A3;
 Tue, 21 Jun 2022 13:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1655819712; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=hxGYd5ZnRx56+hHaQihL62oAtAywdY5xxIHba7yJA1g=;
 b=rXQOjWFOr3e0iNwOdCUrGV98KF63iTVi8lldfSTmAqnNEMsafE0k0v7Xmym0A1H7JIgBzk
 QC8B4FVy7N519KZWwU3vhzQ08u8wS3I0c7gqMNP8EHrb5kqLdjQphYZaQo+YG8MKvN+Puj
 98OHmB+DHCo8NUlEfoo1S0esPAqLY/U=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1655819712;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=hxGYd5ZnRx56+hHaQihL62oAtAywdY5xxIHba7yJA1g=;
 b=fLCwZWpJfqteoRY8M72UxVWfSNGUrWJOd9N0y1zb0TBLPEosum5Cbd36HF7xXa3c7VukNV
 I4Oo0o90Ez4PgpAg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 5A11413638;
 Tue, 21 Jun 2022 13:55:12 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id EeZxFMDNsWKMOwAAMHmgww
 (envelope-from <jdelvare@suse.de>); Tue, 21 Jun 2022 13:55:12 +0000
Date: Tue, 21 Jun 2022 15:55:11 +0200
From: Jean Delvare <jdelvare@suse.de>
To: ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
Message-ID: <20220621155511.5b266395@endymion.delvare>
Organization: SUSE Linux
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Unlike release_mem_region(), a call to release_resource()
 does not free the resource, so it has to be freed explicitly to avoid a memory
 leak. Signed-off-by: Jean Delvare <jdelvare@suse.de> Fixes: 455cd867b85b
 ("platform/x86: thinkpad_acpi: Add a s2idle resume quirk for a number of
 laptops")
 Cc: Mario Limonciello <mario.limonciello@amd.com> [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o3eLi-0004fY-Hs
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix a memory
 leak of EFCH MMIO resource
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
Cc: Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Unlike release_mem_region(), a call to release_resource() does not
free the resource, so it has to be freed explicitly to avoid a memory
leak.

Signed-off-by: Jean Delvare <jdelvare@suse.de>
Fixes: 455cd867b85b ("platform/x86: thinkpad_acpi: Add a s2idle resume quirk for a number of laptops")
Cc: Mario Limonciello <mario.limonciello@amd.com>
Cc: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Cc: Hans de Goede <hdegoede@redhat.com>
Cc: Mark Gross <markgross@kernel.org>
---
 drivers/platform/x86/thinkpad_acpi.c |    1 +
 1 file changed, 1 insertion(+)

--- linux-5.18.orig/drivers/platform/x86/thinkpad_acpi.c	2022-05-22 21:52:31.000000000 +0200
+++ linux-5.18/drivers/platform/x86/thinkpad_acpi.c	2022-06-21 15:49:31.705166709 +0200
@@ -4529,6 +4529,7 @@ static void thinkpad_acpi_amd_s2idle_res
 	iounmap(addr);
 cleanup_resource:
 	release_resource(res);
+	kfree(res);
 }
 
 static struct acpi_s2idle_dev_ops thinkpad_acpi_s2idle_dev_ops = {


-- 
Jean Delvare
SUSE L3 Support


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
