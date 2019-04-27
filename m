Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB0CB488
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 27 Apr 2019 22:36:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hKU32-0002B4-Q5; Sat, 27 Apr 2019 20:35:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jacek.anaszewski@gmail.com>) id 1hKU31-0002Ai-3g
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 27 Apr 2019 20:35:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Of5q0BaBWcu7SipLsoh1bQyd4XeRJohXnhoQHeL6Sws=; b=DrFc6FDYaSCVy8yyG+QLzwxeU/
 OF1KHe8IGVE7l2xhITimr7oUhtHGvbd41rqtBshrjwnP0vE2cfRjC+5AYZyMhFnQMoMWYtl8BJGQr
 +S/ReRQbSCy59MqJ19aEZuP3yGegB70VfnUCzTv3FcadRJeGgtfJ5SUC12SodNUf26AE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Of5q0BaBWcu7SipLsoh1bQyd4XeRJohXnhoQHeL6Sws=; b=nCKCAl1oGRSnJxoofsUv5ULNWF
 xAmeFYQp7w7jIU48ddfyBqmpJkc2+6UKfgGahfVWneh8xr1HI/CD6xxSWfFsNRGFOHlVFZAWltKvZ
 DJmwqfRKL2EV4W0vgWaqKazUwVXEAhB7qEeMNH7C+XDKlEhBaZtmX2JKNZ4pCn/CBxUU=;
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hKU2z-00GsmU-4r
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 27 Apr 2019 20:35:47 +0000
Received: by mail-lf1-f65.google.com with SMTP id v1so5020379lfg.5
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 27 Apr 2019 13:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Of5q0BaBWcu7SipLsoh1bQyd4XeRJohXnhoQHeL6Sws=;
 b=DI9yZhSHr7xCv8xtq9n3LcSAVoQiSM8Eu36VLwDYNU6McIiWJLliVJRoEBnynWHO8S
 UZhggXRQgN4KgjCxVax01d4ryxPs2DS0E/B60l8KIAuOKW71+IdTUQqTkhFX+R404yLE
 dzDDqMeeEdHK2OAnGGmNYbsXG5xnoL5UK5IClKNi+KMKoeUpOBrE6kzb37gcTkgMJN2Z
 KiB+RoKYXgG1+pCXazmDn7m5g7BP5HsmQozwdQ6GwJrsFQPNlT+nUp7aqoPPZsHR5/V0
 n/2QHaPntcMpQCPLPRTqW5zyYycJGPMMBRB0vL1MhFrxuVnp5teqsdReJsCtthQFHCfh
 dSRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Of5q0BaBWcu7SipLsoh1bQyd4XeRJohXnhoQHeL6Sws=;
 b=f6P55vCWMxai48qCOWwE7kyazrsdfNeEJcNZkh2pzkjJ5EdzIEJG58SlOvvt+PxqlE
 Px4M9PqJOtBeYFUgsUxqjkzBeM4nrd6mEnpgqhaoNJYjaSpjuR3MFsd3qf2HJT1BFLSt
 UGXCaxXUa3r/aDWFpXXXMCzB7XJ8CTpe26WMeAKrXc7zpAk/uR29Qp667Y3JV/gp0ygO
 lX3FCXjc9/408YFH+xhgzBndLIUaiSObYus6JhOmVCUk35yLkha+VXotHt9IoJGdQB7m
 FpM24Y5upphZcMcnx/OW7sGmHqJCIgLFffxGqajSU6FFmXoP4YzkR3JCcNDWb5vJQK/Q
 5dOA==
X-Gm-Message-State: APjAAAWXVoZylP/wkBRLVdCa+k4s71mFgm8hjH6xru0vz9zmxmtLcnZe
 Hr38KyhATL07IwfTA6D8+mI=
X-Google-Smtp-Source: APXvYqyY6BP8ohzn715ladVEk/XZG46suY8KFysMBGppUb2BOdpnPSdK0KEfqpyIYPzPZ5LHOO+kIA==
X-Received: by 2002:a19:751a:: with SMTP id y26mr7217101lfe.47.1556397338388; 
 Sat, 27 Apr 2019 13:35:38 -0700 (PDT)
Received: from [192.168.1.19] (dkh57.neoplus.adsl.tpnet.pl. [83.24.11.57])
 by smtp.gmail.com with ESMTPSA id v23sm1171949ljk.14.2019.04.27.13.35.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 13:35:37 -0700 (PDT)
To: Pavel Machek <pavel@ucw.cz>
References: <20190426123513.GA18172@amd> <20190426214246.GA24966@amd>
 <84fac57d-1121-a1da-fb45-16a2521bdef9@gmail.com> <20190427193411.GA9709@amd>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Message-ID: <2578a614-beb9-1c9d-9f74-208a8a7ab64f@gmail.com>
Date: Sat, 27 Apr 2019 22:35:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190427193411.GA9709@amd>
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jacek.anaszewski[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.65 listed in list.dnswl.org]
 -0.2 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
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
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hKU2z-00GsmU-4r
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
Cc: ibm-acpi-devel@lists.sourceforge.net, ibm-acpi@hmh.eng.br,
 linux-leds@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On 4/27/19 9:34 PM, Pavel Machek wrote:
> On Sat 2019-04-27 18:55:37, Jacek Anaszewski wrote:
>> On 4/26/19 11:42 PM, Pavel Machek wrote:
>>> Hi!
>>>
>>>> Kernel 5.1.0-rc1 + some unrelated bits.
>>>
>>> I tried adding
>>> https://marc.info/?l=linux-kernel&m=151622365715313&q=raw as Jacek
>>> suggested, and it is still broken.
>>>
>>> Test code is this: ledtest actually works as expected on first try,
>>> but keeps blinking on second run. Strange.
>>
>> Did it work for previous releases? If yes, then bisect should help here.
> 
> Absolutely no idea :-(. I assume "no". Capslock LED on the same system
> works as expected.
> 
> I still hope thinkpad people will speak up, notice it does not work
> for them, and debug it :-).

I see this driver implements blink_set:

tpacpi_leds[led].led_classdev.blink_set = &led_sysfs_blink_set;

and also applies some internal logic related to the type
of supported LEDs, and the way how the hardware is accessed.

To eliminate the problem on the LED core side you could
disable initialization of blink_set op in the driver.

-- 
Best regards,
Jacek Anaszewski


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
