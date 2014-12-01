.class public abstract Lcom/android/incallui/callerinfocard/item/PersonalItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "PersonalItem.java"


# instance fields
.field private mRawContactId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method private convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-string v3, "1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    new-instance v0, Lcom/android/incallui/lunar/SolarLunarConverter;

    invoke-direct {v0}, Lcom/android/incallui/lunar/SolarLunarConverter;-><init>()V

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/incallui/lunar/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    const/4 v3, 0x3

    new-array v2, v3, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/incallui/lunar/SolarLunarConverter;->getYear()I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {v0}, Lcom/android/incallui/lunar/SolarLunarConverter;->getMonth()I

    move-result v3

    aput v3, v2, v6

    invoke-virtual {v0}, Lcom/android/incallui/lunar/SolarLunarConverter;->getDay()I

    move-result v3

    aput v3, v2, v7

    :goto_1
    return-object v2

    :cond_0
    const-string v3, "2"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getEventTpye()Ljava/lang/String;
.end method

.method public abstract getRemainedDays(Landroid/content/Context;I)Ljava/lang/String;
.end method

.method public abstract getUpdateTimeString(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public launch()V
    .locals 13

    const/4 v5, 0x0

    const/4 v1, 0x1

    sget-object v12, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v3, "contact_id=? AND contactEventType=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mRawContactId:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->getEventTpye()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-wide/16 v9, 0x0

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    :cond_0
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "support_callerinfocard_osup"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.android.calendar"

    const-string v1, "com.android.calendar.EventInfoActivity"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/high16 v0, 0x24000000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "ignore_time"

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v11}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    const-string v0, "com.android.calendar"

    const-string v1, "com.android.calendar.detail.EventInfoActivity"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 30

    const/16 v18, 0x0

    const/4 v10, 0x0

    if-eqz p3, :cond_3

    :try_start_0
    const-string v26, "data1"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v4, v0, :cond_0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    :cond_0
    const-string v26, "support_lunar_birthday"

    invoke-static/range {v26 .. v26}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1

    const-string v26, "data15"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v4, v0, :cond_1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_1
    const-string v26, "raw_contact_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v4, v0, :cond_2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/callerinfocard/item/PersonalItem;->mRawContactId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_0
    if-eqz v18, :cond_5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v24

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    :try_start_1
    const-string v26, "-"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_4

    const-string v26, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    :cond_4
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_6

    const-string v26, "PersonalItem"

    const-string v27, "PersonalItem : personalEventDay data can not split"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v6

    :try_start_2
    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PersonalItem setItem : exception = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v26

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v26

    :cond_6
    const/16 v25, -0x1

    const/4 v15, -0x1

    const/4 v5, -0x1

    const/16 v23, -0x1

    const/16 v22, -0x1

    const/16 v21, -0x1

    const/4 v13, 0x0

    :try_start_3
    move-object/from16 v0, v20

    array-length v14, v0

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v26, 0x2

    move/from16 v0, v26

    if-lt v14, v0, :cond_e

    const/16 v26, 0x4

    move/from16 v0, v26

    if-gt v14, v0, :cond_e

    add-int/lit8 v26, v14, -0x3

    if-ltz v26, :cond_8

    const-string v26, ""

    add-int/lit8 v27, v14, -0x3

    aget-object v27, v20, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7

    add-int/lit8 v26, v14, -0x3

    aget-object v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v25

    :cond_7
    move/from16 v23, v25

    :cond_8
    add-int/lit8 v26, v14, -0x2

    aget-object v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    add-int/lit8 v15, v26, -0x1

    add-int/lit8 v26, v14, -0x1

    aget-object v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v22, v15

    move/from16 v21, v5

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v15, v0, :cond_9

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v5, v0, :cond_9

    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v26, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    :cond_9
    const-string v26, "support_lunar_birthday"

    invoke-static/range {v26 .. v26}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_11

    if-eqz v10, :cond_11

    const-string v26, "1"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    const-string v26, "2"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I

    move-result-object v19

    const/4 v13, 0x1

    if-eqz v19, :cond_b

    const/16 v26, 0x0

    aget v26, v19, v26

    const/16 v27, 0x1

    aget v27, v19, v27

    const/16 v28, 0x2

    aget v28, v19, v28

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    sub-long v26, v26, v28

    const-wide/32 v28, 0x5265c00

    div-long v26, v26, v28

    const-wide/16 v28, 0x7

    cmp-long v26, v26, v28

    if-lez v26, :cond_f

    const/16 v16, 0x1

    :goto_2
    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_10

    const/16 v26, 0x1

    :goto_3
    and-int v16, v16, v26

    if-eqz v16, :cond_c

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v26, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->convertLunarToSolar(Ljava/util/Calendar;Ljava/lang/String;)[I

    move-result-object v19

    if-eqz v19, :cond_c

    const/16 v26, 0x0

    aget v26, v19, v26

    const/16 v27, 0x1

    aget v27, v19, v27

    const/16 v28, 0x2

    aget v28, v19, v28

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    :cond_c
    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v26, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_d
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    sub-long v26, v26, v28

    const-wide/32 v28, 0x5265c00

    div-long v8, v26, v28

    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PersonalItem - inDays : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    const-wide/16 v26, 0x0

    cmp-long v26, v8, v26

    if-ltz v26, :cond_18

    const-wide/16 v26, 0x7

    cmp-long v26, v8, v26

    if-gtz v26, :cond_18

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v25

    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v12

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v15, v0, :cond_12

    const/16 v26, 0x1d

    move/from16 v0, v26

    if-ne v5, v0, :cond_12

    const/4 v11, 0x1

    :goto_5
    if-nez v12, :cond_16

    if-eqz v11, :cond_16

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v6

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z

    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PersonalItem : exception = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_1

    :cond_e
    :try_start_4
    const-string v26, "PersonalItem"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PersonalItem : personalEventDay format = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z

    goto/16 :goto_1

    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_10
    const/16 v26, 0x0

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v26

    if-lez v26, :cond_d

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_4

    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_13
    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    move/from16 v0, v23

    move/from16 v1, v26

    if-le v0, v1, :cond_16

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    sub-int v26, v23, v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    if-nez v15, :cond_14

    const/16 v26, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    const/16 v27, 0xb

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_16

    :cond_14
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z

    goto/16 :goto_1

    :cond_15
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z

    goto/16 :goto_1

    :cond_16
    const v26, 0x7f02009d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setAppIcon(I)V

    long-to-int v0, v8

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->getRemainedDays(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f02044f

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mImageType1:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    move-wide/from16 v26, v0

    sub-long v26, v26, v8

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    const-string v26, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_17

    const-string v26, "/"

    const-string v27, "-"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/incallui/callerinfocard/item/PersonalItem;->getUpdateTimeString(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTimeString:Ljava/lang/String;

    goto/16 :goto_1

    :cond_18
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method
