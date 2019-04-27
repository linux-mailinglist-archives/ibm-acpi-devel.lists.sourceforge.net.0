Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7F7B401
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 27 Apr 2019 18:56:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hKQc9-0005Wh-Vd; Sat, 27 Apr 2019 16:55:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jacek.anaszewski@gmail.com>) id 1hKQc8-0005WZ-GN
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 27 Apr 2019 16:55:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PcmmjV8fkwt0UZvFoyGXrJ1BwXQuHUaqDZyB3z7RZgg=; b=L4fS25mh7Tdic3K2cLsPGG2RW5
 S/nCQagf3A9VaOT1hEIwX+yBPtxWc8ipXBEyldvUijZM2ILJ6lpdfbc+rZDu+4Oge8/eedH7fyLYG
 w2JgpZucgi764Qb6ZUmGchx6HnGWwQdrJR5N+hMJUrKChi4w7ho8DS7XFeqa8ECV0dXY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PcmmjV8fkwt0UZvFoyGXrJ1BwXQuHUaqDZyB3z7RZgg=; b=BtwRlwU6rGD4L4PiJkT5tKp1vE
 yqSH1Ul5Jm4IDqF2E80F9mAUmlT4Ndzy063lKI3OCSg2fkfRfrKKMEzLVKnWFxyhp0s76FLHe1Utt
 wfF0btpTOeV4Uu5PTS6ceL9Ui5J/LpFrxAw17YPogT6rpxS0qbWk4kZ3x3B4Y/3HPlsg=;
Received: from mail-lj1-f172.google.com ([209.85.208.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hKQc6-00GheO-Bj
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 27 Apr 2019 16:55:48 +0000
Received: by mail-lj1-f172.google.com with SMTP id q10so5673128ljc.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 27 Apr 2019 09:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=PcmmjV8fkwt0UZvFoyGXrJ1BwXQuHUaqDZyB3z7RZgg=;
 b=cDRkyO7qL5aG8TT/PYxPQPIguoLyJu0iEhZWaADkl05U4RGqQnhlbjlskeK9Az0JCn
 PDv4RK1itzCbMiqqmCiCu/iZcZCdNN586EWZ+TUBYQSEMVXDFUPd7fzNFrUDQrzgS1kR
 cdnQjwmgWZfxRxrXpqu7YwPrLLpwIry1uEsztZhqANCmxoIiatEqnOIbxle0gxxgJW9n
 /mc+mUIbfzqsiT5JtrZZNhtvX6OP0A8qwuWwIzuD3znX3xX+XXYx8HZlNki3ETvcpJTT
 UlX2XbBh6/798fzTSKyEcw9ra29nx5GjTbkNBhwKWmZVdL+IavqXxcxaC8FmL4Wpm9R7
 w8rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PcmmjV8fkwt0UZvFoyGXrJ1BwXQuHUaqDZyB3z7RZgg=;
 b=E6jTyNtvQlNxinMFoYZsFDlotSUUVndLpyoH6kqBEaFsqXrCDv2jwqQxmzA2QzAyeF
 ZFpkrJdHY0QHWTIrKouJx6Ifv9gmPXwp7WbTPpQPXKr8Ce+iBJLUKC/cxSVGSQTMxF26
 rxXYmfKoNHObDO5M98c1OTq0HxxIgTzS5fzE14aymG7sm5LQxLHv3lLeoOIP5CKZS3ip
 9yoRrccg6ugVTQEzRfeY2uH38UCM9NlV8Cbp5Buh5B9+hy7gy70cypTuR3BHqJcg0pw/
 bskBw6s6gWiUUfKkBcKAE5lsiTxOYOPmwH+icluLp1jXQPIoPRUB5M/gmvLXdg/Im3JH
 MNUg==
X-Gm-Message-State: APjAAAV/Bvf3I07aVUMy8eSjxfzhLKrUHbVAF0kZadsqM0FUrB0KHYPr
 DP3zxh+qhyq8w8aU+C30VLM=
X-Google-Smtp-Source: APXvYqziaEnkdj/yVlERSWR7LhjKeFhDbcsqMiYZFr8314GknAmrnd8oGfjZa5Fgpn09m20mwahcXg==
X-Received: by 2002:a2e:80c8:: with SMTP id r8mr10418274ljg.112.1556384139515; 
 Sat, 27 Apr 2019 09:55:39 -0700 (PDT)
Received: from [192.168.1.19] (dkh57.neoplus.adsl.tpnet.pl. [83.24.11.57])
 by smtp.gmail.com with ESMTPSA id f9sm1163700ljf.69.2019.04.27.09.55.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 09:55:38 -0700 (PDT)
To: Pavel Machek <pavel@ucw.cz>, linux-leds@vger.kernel.org,
 ibm-acpi@hmh.eng.br, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
References: <20190426123513.GA18172@amd> <20190426214246.GA24966@amd>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com>
Date: Sat, 27 Apr 2019 18:55:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190426214246.GA24966@amd>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jacek.anaszewski[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.172 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: marc.info]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hKQc6-00GheO-Bj
Subject: Re: [ibm-acpi-devel] Thinkpad ACPI led -- it keeps blinking
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

On 4/26/19 11:42 PM, Pavel Machek wrote:
> Hi!
> 
>> Kernel 5.1.0-rc1 + some unrelated bits.
> 
> I tried adding
> https://marc.info/?l=linux-kernel&m=151622365715313&q=raw as Jacek
> suggested, and it is still broken.
> 
> Test code is this: ledtest actually works as expected on first try,
> but keeps blinking on second run. Strange.

Did it work for previous releases? If yes, then bisect should help here.

-- 
Best regards,
Jacek Anaszewski


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
