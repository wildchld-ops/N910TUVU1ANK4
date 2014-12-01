.class public Lcom/android/launcher2/SamsungWidgetProviderInfo;
.super Ljava/lang/Object;
.source "SamsungWidgetProviderInfo.java"


# instance fields
.field public final mClassName:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mHorizontalHeight:I

.field public mHorizontalWidth:I

.field public final mPackageName:Ljava/lang/String;

.field public final mThemeName:Ljava/lang/String;

.field public mVerticalHeight:I

.field public mVerticalWidth:I

.field public mWidgetPreview:I

.field public mWidgetTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mVerticalWidth:I

    iput v0, p0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mVerticalHeight:I

    iput v0, p0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mHorizontalWidth:I

    iput v0, p0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mHorizontalHeight:I

    iput-object p1, p0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mClassName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mThemeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mClassName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getHeight(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mHorizontalHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mVerticalHeight:I

    goto :goto_0
.end method

.method public getWidth(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mHorizontalWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mVerticalWidth:I

    goto :goto_0
.end method
