.class public Lcom/android/incallui/callerinfocard/item/LastCallLogItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "LastCallLogItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->formatDuration(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatDuration(JZ)Ljava/lang/String;
    .locals 11

    if-nez p3, :cond_1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3c

    cmp-long v6, p1, v6

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x3c

    div-long v2, p1, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v2

    sub-long/2addr p1, v6

    :cond_0
    move-wide v4, p1

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090318

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_1
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3c

    cmp-long v6, p1, v6

    if-ltz v6, :cond_2

    const-wide/16 v6, 0x3c

    div-long v2, p1, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v2

    sub-long/2addr p1, v6

    :cond_2
    const-wide/16 v6, 0x3c

    cmp-long v6, v2, v6

    if-ltz v6, :cond_3

    const-wide/16 v6, 0x3c

    div-long v0, v2, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v0

    sub-long/2addr v2, v6

    :cond_3
    move-wide v4, p1

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_4

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090315

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_5

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090316

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_6

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090317

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090318

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_7
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_8

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_8

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090319

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_8
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_9

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f09031a

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_9
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_a

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f09031b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_a
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f09031c

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_b
    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_c

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f09031d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_c
    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f09031e

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_d
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f09031f

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_e
    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090320

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private formatDurationTTS(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->formatDurationTTS(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatDurationTTS(JZ)Ljava/lang/String;
    .locals 11

    if-nez p3, :cond_1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3c

    cmp-long v6, p1, v6

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x3c

    div-long v2, p1, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v2

    sub-long/2addr p1, v6

    :cond_0
    move-wide v4, p1

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090324

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_1
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3c

    cmp-long v6, p1, v6

    if-ltz v6, :cond_2

    const-wide/16 v6, 0x3c

    div-long v2, p1, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v2

    sub-long/2addr p1, v6

    :cond_2
    const-wide/16 v6, 0x3c

    cmp-long v6, v2, v6

    if-ltz v6, :cond_3

    const-wide/16 v6, 0x3c

    div-long v0, v2, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v0

    sub-long/2addr v2, v6

    :cond_3
    move-wide v4, p1

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_4

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090321

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_5

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090322

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_6

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090323

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090324

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_7
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_8

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_8

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090325

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_8
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_9

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090326

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_9
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_a

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090327

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_a
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090328

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_b
    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_c

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f090329

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_c
    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f09032a

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_d
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f09032b

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_e
    iget-object v6, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const v7, 0x7f09032c

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v4, v5}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->toOneDigitChar(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const v2, 0x7f02045e

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02045d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02045c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020457

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "display_hd_icon"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02045f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x1f4 -> :sswitch_1
        0x320 -> :sswitch_2
        0x3e8 -> :sswitch_3
    .end sparse-switch
.end method

.method private getLogTypeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020450

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020451

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020452

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020454

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02044e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setCallType(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v1, "disable_call_duration_information"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "remove_call_duration"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mImageType2:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mImageType2:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setLogType(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->getLogTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mImageType1:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private static toOneDigitChar(J)I
    .locals 4

    const-string v0, "%01d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public launch()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.android.contacts"

    :cond_0
    const-string v1, "com.android.dialer.CallDetailActivity"

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "support_callerinfocard_osup"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v1, "com.sec.android.app.dialertab.calllog.CallDetailActivity"

    const-string v5, "from_callcard"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone_number"

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mCookieWrapper:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "vnd.android.cursor.item/calls"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->startActivity(Landroid/content/Intent;)V

    const-string v0, "support_second_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kids_home_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/service/OverlayPopupService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 9

    const v0, 0x7f02009a

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setAppIcon(I)V

    const v0, 0x7f09032f

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setTitle(Landroid/content/Context;I)V

    const-string v0, "type"

    invoke-direct {p0, p3, v0}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->setLogType(Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    iget-wide v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    const-wide/32 v3, 0x5265c00

    const-wide/32 v5, 0x240c8400

    const/high16 v7, 0x40000

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTimeString:Ljava/lang/String;

    :cond_0
    const-string v0, "logtype"

    invoke-direct {p0, p3, v0}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->setCallType(Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-virtual {p0, p3, v0}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->setMainText(Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method protected setMainText(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v1, "disable_call_duration_information"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "remove_call_duration"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mMainText:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mMainTextTTS:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mMainText:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->formatDurationTTS(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mMainTextTTS:Ljava/lang/String;

    goto :goto_0
.end method
