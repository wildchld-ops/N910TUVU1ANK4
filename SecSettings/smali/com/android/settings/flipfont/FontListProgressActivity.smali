.class public Lcom/android/settings/flipfont/FontListProgressActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "FontListProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipfont/FontListProgressActivity$1;,
        Lcom/android/settings/flipfont/FontListProgressActivity$LoadListTask;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private enable:Z

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListProgressActivity;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListProgressActivity;->enable:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/flipfont/FontListProgressActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListProgressActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/flipfont/FontListProgressActivity;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListProgressActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/flipfont/FontListProgressActivity;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/flipfont/FontListProgressActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/flipfont/FontListProgressActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListProgressActivity;->enable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/flipfont/FontListProgressActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListProgressActivity;->enable:Z

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/settings/flipfont/FontListProgressActivity;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "isEasySetting"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontListProgressActivity;->enable:Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListProgressActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settings/flipfont/FontListProgressActivity$LoadListTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/flipfont/FontListProgressActivity$LoadListTask;-><init>(Lcom/android/settings/flipfont/FontListProgressActivity;Lcom/android/settings/flipfont/FontListProgressActivity$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method
