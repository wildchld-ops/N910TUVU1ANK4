.class public final Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;
.super Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
.source "AirButtonClipedTextAdapter.java"


# instance fields
.field private final DATE:Ljava/lang/String;

.field private final EMAIL:Ljava/lang/String;

.field private final FILTER:Ljava/lang/String;

.field private final PHONE_NUMBER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TIME:Ljava/lang/String;

.field private final URL:Ljava/lang/String;

.field mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field mClipedStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCount:I

.field private metaType:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>()V

    const-string v1, "AirButtonClipedTextAdapter"

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->TAG:Ljava/lang/String;

    const/16 v1, 0xf

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mMaxCount:I

    const-string v1, "filter"

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->FILTER:Ljava/lang/String;

    const-string v1, "date"

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->DATE:Ljava/lang/String;

    const-string/jumbo v1, "time"

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->TIME:Ljava/lang/String;

    const-string/jumbo v1, "phone_number"

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->PHONE_NUMBER:Ljava/lang/String;

    const-string v1, "email"

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->EMAIL:Ljava/lang/String;

    const-string/jumbo v1, "url"

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->URL:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->metaType:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->isSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/android/sdk/look/SlookResourceManager;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mMaxCount:I

    invoke-direct {p0, p2}, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->getType(Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->metaType:I

    const-string v1, "clipboardEx"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const-string v1, "No clip to add"

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->setEmptyText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getType(Landroid/os/Bundle;)I
    .locals 2
    .param p1    # Landroid/os/Bundle;

    if-eqz p1, :cond_4

    const-string v1, "filter"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "date"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "phone_number"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const-string v1, "email"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSupport(I)Z
    .locals 2
    .param p1    # I

    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->getVersionCode()I

    move-result v0

    if-ge v0, p1, :cond_0

    const-string v0, "AirButtonClipedTextAdapter"

    const-string v1, "This is not supported in device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->metaType:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mMaxCount:I

    invoke-virtual {v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->getClipedStrings(II)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mClipedStrings:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mClipedStrings:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mClipedStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mClipedStrings:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public onDismiss(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onDismiss(Landroid/view/View;)V

    return-void
.end method

.method public onShow(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onShow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->metaType:I

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mMaxCount:I

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->getClipedStrings(II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonClipedTextAdapter;->mClipedStrings:Ljava/util/ArrayList;

    goto :goto_0
.end method
