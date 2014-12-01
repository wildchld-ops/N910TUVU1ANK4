.class Lcom/android/launcher2/HomePendingSamsungWidget;
.super Lcom/android/launcher2/HomePendingItem;
.source "HomePendingSamsungWidget.java"


# instance fields
.field mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/SamsungWidgetProviderInfo;)V
    .locals 1

    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomePendingItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    iput-object p1, p0, Lcom/android/launcher2/HomePendingSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomePendingSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomePendingSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
