Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0291960526
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 27 Aug 2024 11:10:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sisDF-0001El-22;
	Tue, 27 Aug 2024 09:10:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1sisDD-0001Ef-DV
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 27 Aug 2024 09:10:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ms46jJfB5uJh4cdKqlH0Ud3Q2tMTteM2Uh2m3C5D2Ww=; b=GgWZPHwpv6k3E0lbDw37gLJWUn
 pwzZHRLTlhnsIgOnk4RlvTd3MF9/tMgd5FPgXlThWAcAwU29Lki896AeuqQhGsWLzOiOZMab68m8z
 xTUquplNt7Dhs5y3qcNo7m3JZlOOEGrQG16gFpFSR/iuRGsEy2/m5SuZ3fEqTXhzbtwM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ms46jJfB5uJh4cdKqlH0Ud3Q2tMTteM2Uh2m3C5D2Ww=; b=U8ZIhfWDTHxmASbyJO1gTDVO7Y
 DGilikc3Y43iqOV4C+a8o8YunE3tv2fu68seVcDtK3/9AmnN5bGxcD9tpTTzWQ6gXrm5hp0bmU0Xy
 Pt7HxMEc0BCYshF4g7ev/h5WjDd7q8hJrjwPxV+AcuTu9nlzBZbdyJivYkKNft7fLGK4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sisDD-0006Z2-C5 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 27 Aug 2024 09:10:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1724749797;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ms46jJfB5uJh4cdKqlH0Ud3Q2tMTteM2Uh2m3C5D2Ww=;
 b=P8kK4sTga2fqw/0+DRcmbS3HSEBUI4NjzeaUlpGRxHG3YiLe8YptyvArktnScIQPFUlYHr
 kr90yyUgVpsTfbCLSdXvTAcf/efswMwgcQqQeOPb819UDSNejhfXTdkP3rNNYr+q67lG/d
 f65eLiwdRgBY5xcKYLNJMEJqzLNGhIs=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-251-150cebGYMaG7QWkznV30WQ-1; Tue, 27 Aug 2024 05:09:54 -0400
X-MC-Unique: 150cebGYMaG7QWkznV30WQ-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a86824d2d12so485660766b.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 27 Aug 2024 02:09:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724749793; x=1725354593;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ms46jJfB5uJh4cdKqlH0Ud3Q2tMTteM2Uh2m3C5D2Ww=;
 b=kDnhy6fDDQFfh8aIGtyyfwcYdDh72akhhgFT708i7Nf9xHOHw4a4eE38Ca+PDylw8u
 B1xSYRJgXiBzU7BKFujFHrcN3bZxLa8LKwVNxEqC3X+c1i/2xo4OJnQX397IPfxplYw/
 GY0+Bw61oABjBo+6b7AIaOMAVRSYNq+7vIz1d61XmAJURYJFDajwBNokqUbbd8u/ywql
 /on2XjjaI7lPiKJQ6cKLW+NxJFrF/PtRxdfjPLngRbxw7oJnILomR+O5zRwr1fV25evR
 mdq8WgNPkCIijnFeBxIQdvQyVpWKRvr0yIGIND/G6HuTxzWr5xDGuA6tFuyizTIJU9iT
 XKng==
X-Gm-Message-State: AOJu0Yx+2hdIrPa7HWx3X/if+4MYDqcXep093Ik4qF3QBGiasRhv5soq
 bl8BOPf7TXQ7sHDs+OfFHh3BfKvCr9gQhBsi7mz9lvl0jEDJDo95tiGh+vwq5w2u8mL0en8hwbn
 Yl6YSTje0zWMUiMnW16l39EmotobODeD9Pg2TnOUIrMeU9iHM48CcIXPitYuE8TC8oHVf0ZqS
X-Received: by 2002:a05:6402:51ca:b0:5c0:902c:e191 with SMTP id
 4fb4d7f45d1cf-5c0902ce1c9mr7827502a12.9.1724749793186; 
 Tue, 27 Aug 2024 02:09:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwOra81V8c3KY1B779MsRtLcVHvekiVbrw4f2RdlUw7ZlNtoJVcFgjUlFEicTeyMHPdiVXFA==
X-Received: by 2002:a05:6402:51ca:b0:5c0:902c:e191 with SMTP id
 4fb4d7f45d1cf-5c0902ce1c9mr7827475a12.9.1724749792621; 
 Tue, 27 Aug 2024 02:09:52 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5c0bb481933sm761463a12.81.2024.08.27.02.09.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Aug 2024 02:09:52 -0700 (PDT)
Message-ID: <9566460c-4d0f-4ead-9fa1-a265c936c3d9@redhat.com>
Date: Tue, 27 Aug 2024 11:09:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>,
 Matthias Fetzer <kontakt@matthias-fetzer.de>
References: <f99e558d-c62a-41eb-93b3-cf00c016d907@stanley.mountain>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <f99e558d-c62a-41eb-93b3-cf00c016d907@stanley.mountain>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Dan, On 8/27/24 10:45 AM, Dan Carpenter wrote: > Hello
 Matthias Fetzer, > > Commit 57d0557dfa49 ("platform/x86: thinkpad_acpi: Add
 Thinkpad Edge > E531 fan support") from Aug 16, 2024 (linux-next), leads
 t [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.129.124 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sisDD-0006Z2-C5
Subject: Re: [ibm-acpi-devel] [bug report] platform/x86: thinkpad_acpi: Add
 Thinkpad Edge E531 fan support
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

Hi Dan,

On 8/27/24 10:45 AM, Dan Carpenter wrote:
> Hello Matthias Fetzer,
> 
> Commit 57d0557dfa49 ("platform/x86: thinkpad_acpi: Add Thinkpad Edge
> E531 fan support") from Aug 16, 2024 (linux-next), leads to the
> following Smatch static checker warning:
> 
> 	drivers/platform/x86/thinkpad_acpi.c:8387 fan_set_enable()
> 	error: uninitialized symbol 's'.
> 
> drivers/platform/x86/thinkpad_acpi.c
>     8319 static int fan_set_enable(void)
>     8320 {
>     8321         u8 s;
>     8322         int rc;
>     8323 
>     8324         if (!fan_control_allowed)
>     8325                 return -EPERM;
>     8326 
>     8327         if (mutex_lock_killable(&fan_mutex))
>     8328                 return -ERESTARTSYS;
>     8329 
>     8330         switch (fan_control_access_mode) {
>     8331         case TPACPI_FAN_WR_ACPI_FANS:
>     8332         case TPACPI_FAN_WR_TPEC:
>     8333                 rc = fan_get_status(&s);
>     8334                 if (rc)
>     8335                         break;
>     8336 
>     8337                 /* Don't go out of emergency fan mode */
>     8338                 if (s != 7) {
>     8339                         s &= 0x07;
>     8340                         s |= TP_EC_FAN_AUTO | 4; /* min fan speed 4 */
>     8341                 }
>     8342 
>     8343                 if (!acpi_ec_write(fan_status_offset, s))
>     8344                         rc = -EIO;
>     8345                 else {
>     8346                         tp_features.fan_ctrl_status_undef = 0;
>     8347                         rc = 0;
>     8348                 }
>     8349                 break;
>     8350 
>     8351         case TPACPI_FAN_WR_ACPI_SFAN:
>     8352                 rc = fan_get_status(&s);
>     8353                 if (rc)
>     8354                         break;
>     8355 
>     8356                 s &= 0x07;
>     8357 
>     8358                 /* Set fan to at least level 4 */
>     8359                 s |= 4;
>     8360 
>     8361                 if (!acpi_evalf(sfan_handle, NULL, NULL, "vd", s))
>     8362                         rc = -EIO;
>     8363                 else
>     8364                         rc = 0;
>     8365                 break;
>     8366 
>     8367         case TPACPI_FAN_WR_ACPI_FANW:
>     8368                 if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8106, 0x05)) {
>     8369                         rc = -EIO;
>     8370                         break;
>     8371                 }
>     8372                 if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8100, 0x00)) {
>     8373                         rc = -EIO;
>     8374                         break;
>     8375                 }
>     8376 
>     8377                 rc = 0;
> 
> s isn't set on this path
> 
>     8378                 break;
>     8379 
>     8380         default:
>     8381                 rc = -ENXIO;
>     8382         }
>     8383 
>     8384         mutex_unlock(&fan_mutex);
>     8385 
>     8386         if (!rc)
> --> 8387                 vdbg_printk(TPACPI_DBG_FAN,
>     8388                         "fan control: set fan control register to 0x%02x\n",
>     8389                         s);
>                                  ^
> Here
> 
>     8390         return rc;
>     8391 }

Thank you for reporting this.

Since this is just a debug print I think it is best to fix this by just
initializing s to 0 when it is declared and then just log 0
in the TPACPI_FAN_WR_ACPI_FANW case.

Anyone got any better suggestions ?

Regards,

Hans




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
