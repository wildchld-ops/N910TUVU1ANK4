.class public Lcom/android/mms/ui/DrmContentsActivity;
.super Landroid/app/Activity;
.source "DrmContentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;,
        Lcom/android/mms/ui/DrmContentsActivity$DrmItem;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrmContentsActivity"


# instance fields
.field private mDrmItemAdapter:Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;

.field private mDrmItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/DrmContentsActivity$DrmItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/DrmContentsActivity;)Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;
    .locals 1
    .param p0    # Lcom/android/mms/ui/DrmContentsActivity;

    iget-object v0, p0, Lcom/android/mms/ui/DrmContentsActivity;->mDrmItemAdapter:Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/DrmContentsActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/DrmContentsActivity;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/mms/ui/DrmContentsActivity;->acquireLicense(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private acquireLicense(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DrmContentsActivity"

    const-string v2, "acqueireLicense : getLicense from Browser"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DrmContentsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acqueireLicense : DRM filepath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/mms/drm/DrmWrapper;->acquireLicense(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DrmContentsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acqueireLicense mOkListener : DRM rights acquireLicense result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private initArrayList([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1    # [Ljava/lang/String;
    .param p2    # [Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;-><init>(Lcom/android/mms/ui/DrmContentsActivity;Lcom/android/mms/ui/DrmContentsActivity$1;)V

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;->setStringOnItem(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/DrmContentsActivity;->mDrmItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f04004a

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    const v4, 0x7f0b0173

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/DrmContentsActivity;->mDrmItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;

    const v5, 0x7f04004b

    iget-object v6, p0, Lcom/android/mms/ui/DrmContentsActivity;->mDrmItemList:Ljava/util/ArrayList;

    invoke-direct {v4, p0, p0, v5, v6}, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;-><init>(Lcom/android/mms/ui/DrmContentsActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/android/mms/ui/DrmContentsActivity;->mDrmItemAdapter:Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "drmFilePath"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v4, "drmFileName"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/DrmContentsActivity;->initArrayList([Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/DrmContentsActivity;->mDrmItemAdapter:Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v4, Lcom/android/mms/ui/DrmContentsActivity$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/DrmContentsActivity$1;-><init>(Lcom/android/mms/ui/DrmContentsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
