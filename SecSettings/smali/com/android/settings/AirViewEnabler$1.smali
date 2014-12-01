.class Lcom/android/settings/AirViewEnabler$1;
.super Landroid/database/ContentObserver;
.source "AirViewEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirViewEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirViewEnabler$1;->this$0:Lcom/android/settings/AirViewEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$1;->this$0:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->updateSwitch()V

    return-void
.end method
