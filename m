Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8411A23F3E8
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  7 Aug 2020 22:41:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k49Av-00084r-BA; Fri, 07 Aug 2020 20:41:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1k49Au-00084k-35
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 07 Aug 2020 20:41:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EV9pdsrHl8NdYQGSjp0yAboKbUs50U9jd9MzO8jKVHk=; b=aQAzgGqOJIZpGG8S4KaK2Oa7fd
 vf4dbIIH9McL5SywaPvoJ1UMfmjg4ILihYhBYNFIyFmUYHgXKqxDZsTL/JOJKhnzt2BECZqDUvOTM
 GKPrGT1QjawpNL8mqu3INJx66ACWqInu3KQ83Nn0BI1L0B+4CVvZE0/K1VimuNfDfrvQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EV9pdsrHl8NdYQGSjp0yAboKbUs50U9jd9MzO8jKVHk=; b=k+ftsmuUISZl6PdlcdmZKKrjUB
 xypZount3JApOyNpBIkoCSEzqeUpuyjxpj0bgi0cORZPAtHRSyx4ueUcnRo7zbevsLz2GWrquwini
 q+t6Yw/5xN69DqOcKHWitI3Gtl+LOEQqoEyjQI7LLEdrGkb91HkrivfKCjVzBCd2i0RI=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.114])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k49As-001FXD-4r
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 07 Aug 2020 20:41:12 +0000
Received: from [100.112.7.98] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-3.bemta.az-c.us-east-1.aws.symcld.net id CF/B6-37059-A5CBD2F5;
 Fri, 07 Aug 2020 20:40:58 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmplleJIrShJLcpLzFFi42JJl3vFrhu1Rzf
 eoHUpi8XLCYcZLWYftrGY82wto8XqPS+YHVg8ds66y+7x+wCjx+4Fn5k8Pm+SC2CJYs3MS8qv
 SGDNOPTlJmPBfMWKmRtaWRsY+yW7GLk4hAT+M0p0/HvJBOE8YpSYc/wpYxcjJ4ewQLDEvL8X2
 UFsESB78dvFrCBFzAITmSTWTpzJDtHxhlGiacZqVpAqNgFtiS1bfrF1MXJw8ArYSlycKAASZh
 FQkXh47APYIFGBWInlU/+AlfMKCEqcnPmEBaScEyjecNgAJMwsYCExc/55RghbXOLWk/lMELa
 8xPa3c5hBbAkBRYkr/7eyQ9gJEste3mGewCg4C8nUWUhGzUIyahaSUQsYWVYxmiUVZaZnlOQm
 ZuboGhoY6BoaGuma6hqameglVukm65UW66YmFpfoGuollhfrFVfmJuek6OWllmxiBMZISgHrk
 h2M31990DvEKMnBpCTKu2yNbrwQX1J+SmVGYnFGfFFpTmrxIUYZDg4lCd6zu4FygkWp6akVaZ
 k5wHiFSUtw8CiJ8GqCpHmLCxJzizPTIVKnGHU5jh2dt4hZiCUvPy9VSpzXF6RIAKQoozQPbgQ
 sdVxilJUS5mVkYGAQ4ilILcrNLEGVf8UozsGoJMy7GmQKT2ZeCdymV0BHMAEdsXsm2BEliQgp
 qQam7j7XG9vmKPyLO+CsNXtGqdP9e0957f7Kv15YyqfirNGavCjw9+SlSj93JMlU7A/o9nFoT
 467u/jns8ZPnE/Kk4W+Ca385n2BJW71hhOWjxvEcq62zA74YqPIvfxLDuengs2X9ZTeXnq4KD
 Y6ZxbTVd4nFdv3rpzCwr7ecPEN+yUl2poqehoTyg9WnvwQHqDy6H/V/dTQGoauj39zRc8/nLP
 Szkvm6MXy+G77yr6lN9k2xyhYKpX5rrdSWdAZzdGx2Oj8hjn3lKWX6045c1757DHdJXNKPoie
 azRR2Vdwi3vePPHV2Tzbb33XLGXXuVF10WfG8dj5y0w4NNMTl2n+1/rzq3P/yqnnl3xbvblsm
 hJLcUaioRZzUXEiAL3B1P2YAwAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-13.tower-415.messagelabs.com!1596832855!274019!1
X-Originating-IP: [103.30.234.7]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 24986 invoked from network); 7 Aug 2020 20:40:57 -0000
Received: from unknown (HELO lenovo.com) (103.30.234.7)
 by server-13.tower-415.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 7 Aug 2020 20:40:57 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 92AB05F4579027AD77FF;
 Sat,  8 Aug 2020 04:40:54 +0800 (CST)
Received: from [10.38.104.100] (10.38.104.100) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Fri, 7 Aug 2020
 13:40:49 -0700
To: Nitin Joshi1 <njoshi1@lenovo.com>, Andy Shevchenko
 <andy.shevchenko@gmail.com>
References: <markpearson@lenovo.com>
 <20200715235242.4934-1-markpearson@lenovo.com>
 <CAHp75Vcwg9aEpybYwEFvhYH4gpy7952i+zMs-2TKGPzkzuhO=g@mail.gmail.com>
 <PU1PR03MB2716FE7EF1BF12E5B9EC25188C730@PU1PR03MB2716.apcprd03.prod.outlook.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <3a557230-0815-4fb6-b329-edec177d7147@lenovo.com>
Date: Fri, 7 Aug 2020 16:40:48 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <PU1PR03MB2716FE7EF1BF12E5B9EC25188C730@PU1PR03MB2716.apcprd03.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.38.104.100]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.114 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.246.114 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1k49As-001FXD-4r
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH] platform/x86:
 thinkpad_acpi: psensor interface
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
Cc: Tomoki Maruichi <maruichit@lenovo.com>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>, Sugumaran
 Lacshiminarayanan <slacshiminar@lenovo.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>, Platform
 Driver <platform-driver-x86@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Andy,

First off apologies for my delay in replying and thanks to Nitin for 
covering for me. I took a week of PTO and then suffered the consequences 
of that for the week after - it's taken me a bit to catch-up.


On 7/27/2020 11:51 PM, Nitin Joshi1 wrote:
> Hi Andy ,
> 
>> -----Original Message-----
>> From: Andy Shevchenko <andy.shevchenko@gmail.com>
>> Sent: Monday, July 27, 2020 7:35 PM
>> On Thu, Jul 16, 2020 at 2:53 AM Mark Pearson <markpearson@lenovo.com>
>> wrote:
>>>
>>>          case TP_HKEY_EV_PALM_DETECTED:
>>>          case TP_HKEY_EV_PALM_UNDETECTED:
>>> -               /* palm detected hovering the keyboard, forward to user-space
>>> -                * via netlink for consumption */
>>> +               /* palm detected - pass on to event handler */
>>> +               tpacpi_driver_event(hkey);
>>>                  return true;
>>
>> Comment here tells something about the netlink interface to user space.
>> Can you elaborate why we need sysfs now and how it's all supposed to
>> work?
> Using  netlink , we were getting proximity events like '0x60b0' and '0x60b1' but for our WWAN requirement, we need default and current
> p-sensor state too .
> Some tools like "acpi-listen" uses netlink to display events but we need default and current p-sensor state also as per our requirement.
> hence , we have added new sysfs to get current p-sensor state using 'GPSS' method from BIOS .
> This will be used for implementing "Dynamic power reduction" app which is used to control Body SAR value as per FCC requirement .
> When Body or any object is near or away from p-sensor location on thinkpad system , then sysfs will be set .
> 
I think Nitin has covered it. Let us know if any follow on questions or 
concerns here.

>>
>> ...
>>
>>> +static int psensor_get(bool *state)
>>> +{
>>> +       acpi_handle psensor_handle;
>>> +       int output;
>>> +
>>> +       if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "GPSS",
>> &psensor_handle)))
>>> +               return -ENODEV;
>>> +
>>> +       if (!acpi_evalf(psensor_handle, &output, NULL, "d"))
>>> +               return -EIO;
>>> +
>>> +       /* Check if sensor has a Psensor */
>>> +       if (!(output & BIT(PSENSOR_PRESENT_BIT)))
>>> +               return -ENODEV;
>>> +
>>> +       /* Return if psensor is set or not */
>>> +       *state = output & BIT(PSENSOR_ON_BIT) ? true : false;
>>> +       return 0;
>>> +}
>>
>> It reminds me of a function you created in one of the previous changes. Can
>> you rather create a parameterized helper which will serve for both?
> 
> Ack , we will check it .
I've been looking at this and I understand where you're coming from but 
the benefits of combining them aren't working for me.

The previous change was for the lapmode sensor which is a separate piece 
of hardware. The ACPI handle and access format is different and the 
lapmode sensor has some extra handling logic needed. The code has enough 
differences too that I don't think combining it makes a lot of sense.

Let me know if I'm missing something obvious or if you disagree.
> 
>>
>> ...
>>
>>> +/* sysfs psensor entry */
>>> +static ssize_t psensor_state_show(struct device *dev,
>>> +                                       struct device_attribute *attr,
>>> +                                       char *buf) {
>>
>>> +       return snprintf(buf, PAGE_SIZE, "%d\n", psensor_state);
>>
>> We know that %d takes much less than PAGE_SIZE, use sprintf().
>>
>>> +}
>>
>>> +
>>
>> No blank line here.
>>
> Ack
> 
>>> +static DEVICE_ATTR_RO(psensor_state);
>>
>> ...
>>
>>> +static struct attribute *psensor_attributes[] = {
>>> +       &dev_attr_psensor_state.attr,
>>
>>> +       NULL,
>>
>> No comma for terminator line(s).
>>
> 
> Ack
> 
>>> +};
>>
>> ...
>>
>>> +       /* If support isn't available (ENODEV) then don't return an error
>>> +        * but just don't create the sysfs group
>>> +        */
>>
>> /*
>> * Consider to use a proper multi-line comment style.
>> * Like here. (It's applicable to the entire patch)  */
>>
>> ...
>>
>>> +       err = sysfs_create_group(&tpacpi_pdev->dev.kobj,
>> &psensor_attr_group);
>>> +       return err;
>>
>> return sysfs...
> Ack
> 
I'll push a patch soon with these other adjustments.

Thanks for the review
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
