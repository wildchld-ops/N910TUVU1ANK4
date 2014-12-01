.class public Landroid/webkitsec/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/Plugin$1;,
        Landroid/webkitsec/Plugin$DefaultClickHandler;,
        Landroid/webkitsec/Plugin$PreferencesClickHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/webkitsec/Plugin$PreferencesClickHandler;

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkitsec/Plugin;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkitsec/Plugin;->mPath:Ljava/lang/String;

    iput-object p3, p0, Landroid/webkitsec/Plugin;->mFileName:Ljava/lang/String;

    iput-object p4, p0, Landroid/webkitsec/Plugin;->mDescription:Ljava/lang/String;

    new-instance v0, Landroid/webkitsec/Plugin$DefaultClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkitsec/Plugin$DefaultClickHandler;-><init>(Landroid/webkitsec/Plugin;Landroid/webkitsec/Plugin$1;)V

    iput-object v0, p0, Landroid/webkitsec/Plugin;->mHandler:Landroid/webkitsec/Plugin$PreferencesClickHandler;

    return-void
.end method

.method static synthetic access$100(Landroid/webkitsec/Plugin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkitsec/Plugin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatchClickEvent(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkitsec/Plugin;->mHandler:Landroid/webkitsec/Plugin$PreferencesClickHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/Plugin;->mHandler:Landroid/webkitsec/Plugin$PreferencesClickHandler;

    invoke-interface {v0, p1}, Landroid/webkitsec/Plugin$PreferencesClickHandler;->handleClickEvent(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkitsec/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkitsec/Plugin;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkitsec/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkitsec/Plugin;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setClickHandler(Landroid/webkitsec/Plugin$PreferencesClickHandler;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/webkitsec/Plugin;->mHandler:Landroid/webkitsec/Plugin$PreferencesClickHandler;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/webkitsec/Plugin;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/webkitsec/Plugin;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/webkitsec/Plugin;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/webkitsec/Plugin;->mPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkitsec/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method
