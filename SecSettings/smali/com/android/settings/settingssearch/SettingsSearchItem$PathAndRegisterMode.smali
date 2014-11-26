.class public Lcom/android/settings/settingssearch/SettingsSearchItem$PathAndRegisterMode;
.super Ljava/lang/Object;
.source "SettingsSearchItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathAndRegisterMode"
.end annotation


# instance fields
.field public path:Ljava/lang/String;

.field public registerMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem$PathAndRegisterMode;->path:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem$PathAndRegisterMode;->registerMode:I

    return-void
.end method
