.class public Lcom/android/mms/ui/IconListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/IconListAdapter$IconListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADD_AVATAR:I = 0xe

.field public static final ADD_BOOKMARK:I = 0x14

.field public static final ADD_CALENDAR:I = 0x10

.field public static final ADD_DRAWINGPAD:I = 0xc

.field public static final ADD_IMAGE:I = 0x0

.field public static final ADD_LOCATION:I = 0xa

.field public static final ADD_MEMO:I = 0x11

.field public static final ADD_MYFILES:I = 0x17

.field public static final ADD_NAMECARD:I = 0xf

.field public static final ADD_SCRAPBOOK:I = 0x16

.field public static final ADD_SMEMO:I = 0xb

.field public static final ADD_SNOTE:I = 0xd

.field public static final ADD_SOUND:I = 0x2

.field public static final ADD_TASK:I = 0x12

.field public static final ADD_TEXT_TEMPLATE:I = 0x13

.field public static final ADD_VCAL:I = 0x7

.field public static final ADD_VCARD:I = 0x6

.field public static final ADD_VIDEO:I = 0x1

.field public static final ADD_VNOTE:I = 0x8

.field public static final ADD_VTODO:I = 0x9

.field public static final RECORD_SOUND:I = 0x5

.field public static final RECORD_VIDEO:I = 0x4

.field private static final RESOURCE_ID:I = 0x7f04005e

.field public static final TAKE_PICTURE:I = 0x3


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput p2, p0, Lcom/android/mms/ui/IconListAdapter;->mResourceId:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

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

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput v0, p0, Lcom/android/mms/ui/IconListAdapter;->mResourceId:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method protected static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;II)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2, v1, v0, p3}, Lcom/android/mms/ui/IconListAdapter;->addPackageItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    goto :goto_0
.end method

.method protected static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;III)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/util/PackageInfo;->isDownloadablePkg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-static {p2, v1, v0, p3}, Lcom/android/mms/ui/IconListAdapter;->addPackageItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    goto :goto_0
.end method

.method protected static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2, p4, v0, p3}, Lcom/android/mms/ui/IconListAdapter;->addPackageItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    goto :goto_0
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-direct {v0, p1, p2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addPackageItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Z
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
            "I)Z"
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

    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/IconListAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static commandToPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "com.sec.android.app.camera"

    goto :goto_0

    :pswitch_2
    const-string v0, "com.sec.android.gallery3d"

    goto :goto_0

    :pswitch_3
    const-string v0, "com.sec.android.app.myfiles"

    goto :goto_0

    :pswitch_4
    const-string v0, "com.sec.android.app.voicerecorder"

    invoke-static {p0, v0}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.sec.android.app.voicerecorder"

    goto :goto_0

    :cond_0
    const-string v0, "com.sec.android.app.voicenote"

    goto :goto_0

    :pswitch_5
    const-string v0, "com.android.contacts"

    goto :goto_0

    :pswitch_6
    const-string v0, "com.android.calendar"

    goto :goto_0

    :pswitch_7
    const-string v0, "com.samsung.android.app.memo"

    goto :goto_0

    :pswitch_8
    const-string v0, "com.android.task"

    goto :goto_0

    :pswitch_9
    const-string v0, "com.google.android.apps.maps"

    goto :goto_0

    :pswitch_a
    const-string v0, "com.sec.android.widgetapp.diotek.smemo"

    goto :goto_0

    :pswitch_b
    const-string v0, "com.sec.android.app.snotebook"

    invoke-static {p0, v0}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.sec.android.app.snotebook"

    goto :goto_0

    :cond_1
    const-string v0, "com.samsung.android.snote"

    goto :goto_0

    :pswitch_c
    const-string v0, "com.samsung.android.app.pinboard"

    goto :goto_0

    :pswitch_d
    const-string v0, "com.sec.android.app.myfiles"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getCommand()I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/mms/ui/IconListAdapter;->mResourceId:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    :goto_0
    const v4, 0x7f0b01c9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b006c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getResource()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-object v3

    :cond_0
    move-object v3, p2

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
