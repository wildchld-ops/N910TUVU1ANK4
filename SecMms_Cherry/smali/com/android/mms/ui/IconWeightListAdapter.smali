.class public Lcom/android/mms/ui/IconWeightListAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "IconWeightListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/IconWeightListAdapter"

.field private static sAddAvatar:J

.field private static sAddDrawingPad:J

.field private static sAddMyFiles:J

.field private static sAddMylocation:J

.field private static sAddScrapbook:J

.field private static sAddimage:J

.field private static sAddlocation:J

.field private static sAddsmemo:J

.field private static sAddsnote:J

.field private static sAddsound:J

.field private static sAddvcal:J

.field private static sAddvcard:J

.field private static sAddvideo:J

.field private static sAddvnote:J

.field private static sAddvtodo:J

.field protected static final sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecordsound:J

.field private static sRecordvideo:J

.field private static sTakepicture:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/android/mms/ui/IconWeightListAdapter$1;

    invoke-direct {v0}, Lcom/android/mms/ui/IconWeightListAdapter$1;-><init>()V

    sput-object v0, Lcom/android/mms/ui/IconWeightListAdapter;->sComparator:Ljava/util/Comparator;

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddimage:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvideo:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsound:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sTakepicture:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sRecordvideo:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sRecordsound:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvcard:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvcal:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvnote:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvtodo:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddMylocation:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddlocation:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsmemo:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsnote:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddDrawingPad:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddAvatar:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddScrapbook:J

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddMyFiles:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f04005e

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method protected static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;IJI)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/IconWeightListAdapter;->addPackageItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;IJII)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    move-object v0, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/IconWeightListAdapter;->addPackageItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    const-string v0, "Mms/IconWeightListAdapter"

    const-string v3, "OutOfMemoryError caught @ getResources().getDrawable and throw"

    invoke-static {v0, v3, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;IJ",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    move-object v0, p2

    move-object v1, p6

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/IconWeightListAdapter;->addPackageItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "IJ)V"
        }
    .end annotation

    new-instance v0, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addPackageItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "IJ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_0

    invoke-static/range {p0 .. p5}, Lcom/android/mms/ui/IconWeightListAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static getAddAvatar()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddAvatar:J

    return-wide v0
.end method

.method protected static getAddDrawingPad()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddDrawingPad:J

    return-wide v0
.end method

.method protected static getAddLocation()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddlocation:J

    return-wide v0
.end method

.method protected static getAddMyFiles()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddMyFiles:J

    return-wide v0
.end method

.method protected static getAddMyLocation()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddMylocation:J

    return-wide v0
.end method

.method protected static getAddScrapbook()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddScrapbook:J

    return-wide v0
.end method

.method protected static getAddimage()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddimage:J

    return-wide v0
.end method

.method protected static getAddsmemo()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsmemo:J

    return-wide v0
.end method

.method protected static getAddsnote()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsnote:J

    return-wide v0
.end method

.method protected static getAddsound()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsound:J

    return-wide v0
.end method

.method protected static getAddvcal()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvcal:J

    return-wide v0
.end method

.method protected static getAddvcard()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvcard:J

    return-wide v0
.end method

.method protected static getAddvideo()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvideo:J

    return-wide v0
.end method

.method protected static getAddvnote()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvnote:J

    return-wide v0
.end method

.method protected static getAddvtodo()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvtodo:J

    return-wide v0
.end method

.method protected static getRecordsound()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sRecordsound:J

    return-wide v0
.end method

.method protected static getRecordvideo()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sRecordvideo:J

    return-wide v0
.end method

.method protected static getTakepicture()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/IconWeightListAdapter;->sTakepicture:J

    return-wide v0
.end method

.method public static loadWeight(Landroid/content/Context;)V
    .locals 5

    const-wide/16 v3, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ADD_IMAGE_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddimage:J

    const-string v1, "ADD_VIDEO_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvideo:J

    const-string v1, "ADD_SOUND_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsound:J

    const-string v1, "TAKE_PICTURE_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sTakepicture:J

    const-string v1, "RECORD_VIDEO_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sRecordvideo:J

    const-string v1, "RECORD_SOUND_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sRecordsound:J

    const-string v1, "ADD_VCARD_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvcard:J

    const-string v1, "ADD_VCAL_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvcal:J

    const-string v1, "ADD_VNOTE_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvnote:J

    const-string v1, "ADD_VTODO_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddvtodo:J

    const-string v1, "ADD_LOCATION_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddlocation:J

    const-string v1, "ADD_SMEMO_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsmemo:J

    const-string v1, "ADD_DRAWINGPAD_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddDrawingPad:J

    const-string v1, "ADD_SNOTE_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddsnote:J

    const-string v1, "ADD_AVATAR_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddAvatar:J

    const-string v1, "ADD_SCRAPBOOK_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddScrapbook:J

    const-string v1, "ADD_MYFILES_key"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/mms/ui/IconWeightListAdapter;->sAddScrapbook:J

    return-void
.end method

.method public static updateWeight(Landroid/content/Context;I)V
    .locals 8

    const-wide/16 v6, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    const-string v4, "Mms/IconWeightListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWeight, Unsupported type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    const-string v1, "ADD_AVATAR_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddAvatar()J

    move-result-wide v4

    add-long v2, v4, v6

    goto :goto_0

    :pswitch_2
    const-string v1, "ADD_IMAGE_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    add-long v2, v4, v6

    goto :goto_0

    :pswitch_3
    const-string v1, "TAKE_PICTURE_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getTakepicture()J

    move-result-wide v4

    add-long v2, v4, v6

    goto :goto_0

    :pswitch_4
    const-string v1, "ADD_VIDEO_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    add-long v2, v4, v6

    goto :goto_0

    :pswitch_5
    const-string v1, "RECORD_VIDEO_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordvideo()J

    move-result-wide v4

    add-long v2, v4, v6

    goto :goto_0

    :pswitch_6
    const-string v1, "ADD_SOUND_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsound()J

    move-result-wide v4

    add-long v2, v4, v6

    goto :goto_0

    :pswitch_7
    const-string v1, "RECORD_SOUND_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    add-long v2, v4, v6

    goto :goto_0

    :pswitch_8
    const-string v1, "ADD_VCARD_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcard()J

    move-result-wide v4

    add-long v2, v4, v6

    goto :goto_0

    :pswitch_9
    const-string v1, "ADD_VCAL_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v4

    add-long v2, v4, v6

    goto :goto_0

    :pswitch_a
    const-string v1, "ADD_VNOTE_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvnote()J

    move-result-wide v4

    add-long v2, v4, v6

    goto :goto_0

    :pswitch_b
    const-string v1, "ADD_VTODO_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvtodo()J

    move-result-wide v4

    add-long v2, v4, v6

    goto :goto_0

    :pswitch_c
    const-string v1, "ADD_LOCATION_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v4

    add-long v2, v4, v6

    goto/16 :goto_0

    :pswitch_d
    const-string v1, "ADD_SMEMO_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsmemo()J

    move-result-wide v4

    add-long v2, v4, v6

    goto/16 :goto_0

    :pswitch_e
    const-string v1, "ADD_SNOTE_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsnote()J

    move-result-wide v4

    add-long v2, v4, v6

    goto/16 :goto_0

    :pswitch_f
    const-string v1, "ADD_DRAWINGPAD_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddDrawingPad()J

    move-result-wide v4

    add-long v2, v4, v6

    goto/16 :goto_0

    :pswitch_10
    const-string v1, "ADD_SCRAPBOOK_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddScrapbook()J

    move-result-wide v4

    add-long v2, v4, v6

    goto/16 :goto_0

    :pswitch_11
    const-string v1, "ADD_MYFILES_key"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddMyFiles()J

    move-result-wide v4

    add-long v2, v4, v6

    goto/16 :goto_0

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v4, "Mms/IconWeightListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWeight,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
