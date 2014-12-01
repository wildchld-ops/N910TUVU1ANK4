.class public Lcom/android/settings/ScreenTimeoutFragment;
.super Landroid/app/DialogFragment;
.source "ScreenTimeoutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static isDeviceLockTime:Z

.field private static mContext:Landroid/content/Context;

.field private static mCr:Landroid/content/ContentResolver;

.field private static mScreenTimeoutEntries:[Ljava/lang/String;

.field private static mScreenTimeoutValues:[Ljava/lang/String;


# instance fields
.field private mScreenTimeDialog:Landroid/app/AlertDialog;

.field private mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private static disableUnusableTimeouts()V
    .locals 23

    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const-string v19, "device_policy"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "screen_off_timeout"

    const-wide/16 v20, 0x7530

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    if-eqz v4, :cond_1

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v11

    :goto_0
    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v10, -0x1

    const v10, 0x927c0

    int-to-long v0, v10

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    const-wide/16 v18, 0x1

    cmp-long v18, v11, v18

    if-gez v18, :cond_0

    int-to-long v11, v10

    :cond_0
    const-wide/16 v18, 0x0

    cmp-long v18, v11, v18

    if-nez v18, :cond_2

    :goto_1
    return-void

    :cond_1
    const-wide/16 v11, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, -0x1

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_2
    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_4

    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v18, v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v18, v16, v11

    if-gtz v18, :cond_3

    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Lcom/android/settings/ScreenTimeoutFragment;->isInDefaultTimeoutList(J)Z

    move-result v18

    if-nez v18, :cond_3

    cmp-long v18, v2, v16

    if-gez v18, :cond_3

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_3

    move v7, v6

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v2, v3}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_5

    invoke-virtual {v13, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_8

    :cond_6
    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v19, 0x7f0912fa

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v11, v12}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    sput-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    sput-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v18, "ScreenTimeoutFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "revisedValues.size() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v8, v11, v18

    const-string v18, "ScreenTimeoutFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "last_timeout : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-lez v18, :cond_7

    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    sget-object v19, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v11, v18

    if-gez v18, :cond_7

    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v19, 0x7f0912fa

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v11, v12}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method private getScreenTimeoutValue(I)I
    .locals 1

    sget-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getScreenTimoutIndex(J)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "ScreenTimeoutFragment"

    const-string v2, "getScreenTimoutIndex : mScreenTimeoutValues.length-1 return"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private static getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 14

    const-wide/16 v12, 0x3c

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v5, 0x3e8

    div-long v3, p0, v5

    div-long v0, v3, v12

    rem-long/2addr v3, v12

    const-string v2, ""

    cmp-long v5, v0, v8

    if-lez v5, :cond_0

    sget-object v5, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f11000a

    long-to-int v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    long-to-int v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    cmp-long v5, v0, v8

    if-lez v5, :cond_1

    cmp-long v5, v3, v8

    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    cmp-long v5, v3, v8

    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f11000b

    long-to-int v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    long-to-int v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v5, "ScreenTimeoutFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static isInDefaultTimeoutList(J)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-boolean v3, Lcom/android/settings/ScreenTimeoutFragment;->isDeviceLockTime:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    sget-object v3, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private setScreenTimeoutValue(I)V
    .locals 13

    const-wide/16 v7, 0x0

    int-to-long v9, p1

    invoke-static {v9, v10}, Lcom/android/settings/ScreenTimeoutFragment;->isInDefaultTimeoutList(J)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "ScreenTimeoutFragment"

    const-string v10, "isInDefaultTimeoutList = true"

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v9, Lcom/android/settings/ScreenTimeoutFragment;->mCr:Landroid/content/ContentResolver;

    const-string v10, "screen_off_timeout_rollback"

    invoke-static {v9, v10, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v9, Lcom/android/settings/ScreenTimeoutFragment;->mCr:Landroid/content/ContentResolver;

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/settings/ScreenTimeoutFragment;->mCr:Landroid/content/ContentResolver;

    const-string v10, "screen_off_timeout"

    invoke-static {v9, v10, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-object v9, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_off_timeout"

    invoke-static {v9, v10, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v5

    :goto_2
    sget-object v9, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v11, 0x1388

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    cmp-long v9, v5, v0

    if-gez v9, :cond_2

    move-wide v0, v5

    :cond_2
    const-string v9, "ScreenTimeoutFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "timeVal: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "ScreenTimeoutFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentDeviceLockTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v9, Lcom/android/settings/ScreenTimeoutFragment;->isDeviceLockTime:Z

    if-eqz v9, :cond_3

    cmp-long v7, v0, v7

    if-eqz v7, :cond_3

    int-to-long v7, p1

    cmp-long v7, v7, v0

    if-lez v7, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ScreenTimeoutFragment;->showScreenTimeDialog()V

    :cond_3
    iget-object v7, p0, Lcom/android/settings/ScreenTimeoutFragment;->mSummaryView:Landroid/widget/TextView;

    int-to-long v8, p1

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutSummary(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings/ScreenTimeoutFragment;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    return-void

    :catch_0
    move-exception v3

    const-string v9, "ScreenTimeoutFragment"

    const-string v10, "could not persist screen timeout setting"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string v9, "ScreenTimeoutFragment"

    const-string v10, "could not persist screen timeout setting"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_4
    move-wide v5, v7

    goto :goto_2
.end method

.method public static updateScreenTimeoutValue()V
    .locals 2

    sget-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    sget-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/ScreenTimeoutFragment;->isDeviceLockTime:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    sget-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/android/settings/ScreenTimeoutFragment;->disableUnusableTimeouts()V

    return-void
.end method


# virtual methods
.method public getTimeoutSummary(J)Ljava/lang/String;
    .locals 19

    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_0
    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const-string v15, "device_policy"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v6, :cond_2

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v1

    :goto_1
    const-wide/16 v10, -0x1

    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-gez v14, :cond_3

    const-string v9, ""

    :goto_2
    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "lock_screen_lock_after_timeout"

    const-wide/16 v16, 0x1388

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmp-long v14, v1, v14

    if-eqz v14, :cond_0

    cmp-long v14, v1, v4

    if-gez v14, :cond_0

    move-wide v4, v1

    :cond_0
    sget-boolean v14, Lcom/android/settings/ScreenTimeoutFragment;->isDeviceLockTime:Z

    if-eqz v14, :cond_1

    cmp-long v14, v10, v4

    if-lez v14, :cond_1

    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v15, 0x7f090089

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    return-object v9

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/android/settings/ScreenTimeoutFragment;->isInDefaultTimeoutList(J)Z

    move-result v14

    if-nez v14, :cond_4

    cmp-long v14, p1, v1

    if-gtz v14, :cond_4

    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v15, 0x7f090633

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    if-eqz v14, :cond_5

    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    array-length v14, v14

    if-nez v14, :cond_6

    :cond_5
    const-string v9, ""

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_3
    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    array-length v14, v14

    if-ge v8, v14, :cond_8

    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v14, v14, v8

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v14, p1, v12

    if-ltz v14, :cond_7

    move v3, v8

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    array-length v14, v14

    if-eqz v14, :cond_9

    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    array-length v14, v14

    if-nez v14, :cond_a

    :cond_9
    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v15, 0x7f090633

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_a
    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v14, v14, v3

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v14, v1

    if-gez v14, :cond_b

    cmp-long v14, v1, p1

    if-gez v14, :cond_b

    const-string v14, "ScreenTimeoutFragment"

    const-string v15, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v14, v15}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v15, 0x7f090633

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-wide v10, v1

    goto/16 :goto_2

    :cond_b
    invoke-static/range {p1 .. p2}, Lcom/android/settings/ScreenTimeoutFragment;->isInDefaultTimeoutList(J)Z

    move-result v14

    if-eqz v14, :cond_d

    cmp-long v14, p1, v1

    if-ltz v14, :cond_c

    const-wide/16 v14, 0x0

    cmp-long v14, v1, v14

    if-nez v14, :cond_d

    :cond_c
    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v15, 0x7f090633

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    aget-object v18, v18, v3

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v14, v14, v3

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    goto/16 :goto_2

    :cond_d
    const-wide/16 v14, 0x0

    cmp-long v14, v1, v14

    if-nez v14, :cond_e

    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v15, 0x7f090633

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v10, p1

    goto/16 :goto_2

    :cond_e
    sget-object v14, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const v15, 0x7f090633

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-wide v10, v1

    goto/16 :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/settings/ScreenTimeoutFragment;->getScreenTimeoutValue(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/ScreenTimeoutFragment;->setScreenTimeoutValue(I)V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    invoke-static {}, Lcom/android/settings/ScreenTimeoutFragment;->updateScreenTimeoutValue()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const-wide/16 v6, 0x7530

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/ScreenTimeoutFragment;->getScreenTimoutIndex(J)I

    move-result v3

    const v4, 0x7f090632

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeoutEntries:[Ljava/lang/String;

    invoke-virtual {v0, v4, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0901ba

    new-instance v5, Lcom/android/settings/ScreenTimeoutFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings/ScreenTimeoutFragment$1;-><init>(Lcom/android/settings/ScreenTimeoutFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public showScreenTimeDialog()V
    .locals 13

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v9, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v9, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    if-eqz v3, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    :goto_0
    sget-object v9, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v11, 0x1388

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-eqz v9, :cond_0

    cmp-long v9, v6, v1

    if-gez v9, :cond_0

    move-wide v1, v6

    :cond_0
    const-string v9, "ScreenTimeoutFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "maxTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "ScreenTimeoutFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentDeviceLockTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeDialog:Landroid/app/AlertDialog;

    :cond_1
    sget-object v9, Lcom/android/settings/ScreenTimeoutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v9, 0x7f0401a7

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v9, 0x7f0b0424

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f09008a

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/ScreenTimeoutFragment;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f090632

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/android/settings/ScreenTimeoutFragment;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    return-void

    :cond_2
    const-wide/16 v6, 0x0

    goto/16 :goto_0
.end method
