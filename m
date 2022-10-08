Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FC15F84C7
	for <lists+ibm-acpi-devel@lfdr.de>; Sat,  8 Oct 2022 12:28:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1oh73j-0002G1-N6;
	Sat, 08 Oct 2022 10:27:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <m.szczepaniak.000@gmail.com>) id 1oh73L-0002Co-Io
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 08 Oct 2022 10:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 From:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9xKoEPc08h4COujwDE7viLCx9/N696drvRO3ElLGUE4=; b=eYvw6WQxPGHdYkHLNURAlUy4ss
 aN9Fy86D+5tEKkblPFoDh9fnVO6eaIsGY/MIxCQRKQqt/KQb2EUMVrQEs7iC82L83vSduGeyTxvGM
 9dNjM77GlK5b6a+kdYK/+YZfzPwGdpHwpUCxJFl4jt2dIjqNqR6ObZzJ088EDhAQ0PRI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:From:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9xKoEPc08h4COujwDE7viLCx9/N696drvRO3ElLGUE4=; b=f
 4s18P6lFFKtV5luU0mBRzdrWOX4XC/2CTDkYsyJVI6nAn61+RiQUoWEe0XtMQSBGihCSoQHgLARmH
 qrgMLdfK17V81yTG53hGm+ohxQXpIF1eh7DjY0pBlpghAiQwR6haNta/vRc4FYL08pWGyhtLkMPl1
 Wc285KrHACVdiWAM=;
Received: from mail-ej1-f43.google.com ([209.85.218.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oh73J-0001K1-8w for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 08 Oct 2022 10:27:31 +0000
Received: by mail-ej1-f43.google.com with SMTP id r17so15959259eja.7
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 08 Oct 2022 03:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9xKoEPc08h4COujwDE7viLCx9/N696drvRO3ElLGUE4=;
 b=ASNZj1YHW6OQsN5rqoe7vk40OoDsy73hqC28y16A80e5FWvRFlYVv08Non4kozvAGb
 uk1Kgrgz5qTEMiULk8u/TCGSc0JD0DeWQYZSSQzhNQPg62k5nc4yJnYkY/DEBrtPdCRD
 NHIlimQPbCaErVdpL0utjLYCotXcmG8Qejgtwps7Xdovauad1hvaSLzRbeAliQC/7BN4
 yweWTwDA4getPJD3z0bdG1Glge1v72EUgOWbpfSaAMdmXBQdLhydCVdD8c1g1m12U/Y+
 nLGtj527jJQEFVLwHBsv170I5DmMHoAB50adzFksizOlMzPS1CkAJNWsdCVsVhcATBqz
 t2UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=9xKoEPc08h4COujwDE7viLCx9/N696drvRO3ElLGUE4=;
 b=s3XucW3swaGsbLPR5X0+3MaZPANJCuQcYg0AhmMQ+2QbSh89DhihpZ3hrCtmTrP9cQ
 CwOzou/K1f/PSogoc1hkq3M8sp4cNFFviITlF++ZOKSdJBHPFaBOEiCxI5E2L3GNuQUf
 issg0r28mYARdr1MOYH1FZEfg3F0u5JC6l/KRsp4LZOhtqrAf7z4MGh8tdGrA1Ls8xw6
 J7TPSHRcybQnuOFb5jjG8JyZW792ENGzHiqVAWHlet8RCISeRStOR5RGNLRhFrzjGPA1
 5T3lBu3sv4ii+yXega6Qu12Zq+9CQnwdlGHlMCKC9rl9Dt2qzWspYrAvYqQu4fy512+p
 4ArA==
X-Gm-Message-State: ACrzQf2PBHKzF//0867AD3fOqvpemHcmLMTH6ATB2oiYojDh2+2zN27B
 hQ947lDwGiGgH9MAWh5fx/0URRS6euA=
X-Google-Smtp-Source: AMsMyM4LHq+w3ZQrFg64iK+u/M07/o37LtVTjjcMn/YW5im64frH87AAlubz/RmtvshjkJsKJ0fxzQ==
X-Received: by 2002:a17:907:802:b0:781:8017:b2df with SMTP id
 wv2-20020a170907080200b007818017b2dfmr7348065ejb.606.1665224842865; 
 Sat, 08 Oct 2022 03:27:22 -0700 (PDT)
Received: from [192.168.69.3] ([91.189.216.255])
 by smtp.gmail.com with ESMTPSA id
 b17-20020a50b411000000b00454546561cfsm3177344edh.82.2022.10.08.03.27.22
 for <ibm-acpi-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 08 Oct 2022 03:27:22 -0700 (PDT)
Message-ID: <78bbb8a6-7d9d-3c8c-0ac9-aa992f757873@gmail.com>
Date: Sat, 8 Oct 2022 12:27:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
From: =?UTF-8?Q?Micha=c5=82_Szczepaniak?= <m.szczepaniak.000@gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
Content-Language: en-US
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thinklight has only two values, on/off so it's reasonable
   for max_brightness to be 0 and 1 as if you write anything between 0 and 255
    it will be 255 anyway so there's no point for it to be 255. ---  drivers/platform/x86/thinkpad_acpi.c
    | 1 +  1 file changed, 1 insertion(+) 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.218.43 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [m.szczepaniak.000[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [m.szczepaniak.000[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.218.43 listed in wl.mailspike.net]
X-Headers-End: 1oh73J-0001K1-8w
Subject: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix a
 max_brightness of thinklight
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

VGhpbmtsaWdodCBoYXMgb25seSB0d28gdmFsdWVzLCBvbi9vZmYgc28gaXQncyByZWFzb25hYmxl
IGZvciAKbWF4X2JyaWdodG5lc3MgdG8gYmUgMCBhbmQgMSBhcyBpZiB5b3Ugd3JpdGUgYW55dGhp
bmcgYmV0d2VlbiAwIGFuZCAyNTUgCml0IHdpbGwgYmUgMjU1IGFueXdheSBzbyB0aGVyZSdzIG5v
IHBvaW50IGZvciBpdCB0byBiZSAyNTUuCgotLS0KIMKgZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhp
bmtwYWRfYWNwaS5jIHwgMSArCiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyAKYi9kcml2ZXJz
L3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKaW5kZXggMjJkNGU4NjMzZTMwZTkuLjc3NWMy
ZjMyN2RjM2E4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3Bp
LmMKKysrIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCkBAIC01NTYyLDYg
KzU1NjIsNyBAQCBzdGF0aWMgZW51bSBsZWRfYnJpZ2h0bmVzcyBsaWdodF9zeXNmc19nZXQoc3Ry
dWN0IApsZWRfY2xhc3NkZXYgKmxlZF9jZGV2KQogwqBzdGF0aWMgc3RydWN0IHRwYWNwaV9sZWRf
Y2xhc3NkZXYgdHBhY3BpX2xlZF90aGlua2xpZ2h0ID0gewogwqDCoMKgwqAgLmxlZF9jbGFzc2Rl
diA9IHsKIMKgwqDCoMKgIMKgwqDCoCAubmFtZcKgwqDCoCDCoMKgwqAgPSAidHBhY3BpOjp0aGlu
a2xpZ2h0IiwKK8KgwqDCoCDCoMKgwqAgLm1heF9icmlnaHRuZXNzwqDCoMKgID0gMSwKIMKgwqDC
oMKgIMKgwqDCoCAuYnJpZ2h0bmVzc19zZXRfYmxvY2tpbmcgPSAmbGlnaHRfc3lzZnNfc2V0LAog
wqDCoMKgwqAgwqDCoMKgIC5icmlnaHRuZXNzX2dldMKgwqDCoCA9ICZsaWdodF9zeXNmc19nZXQs
CiDCoMKgwqDCoCB9CgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby9pYm0tYWNwaS1kZXZlbAo=
