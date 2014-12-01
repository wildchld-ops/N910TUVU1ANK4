.class Lcom/android/settings/Settings$HeaderAdapter$1;
.super Landroid/database/ContentObserver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings$HeaderAdapter;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/Settings$HeaderAdapter$1;->this$0:Lcom/android/settings/Settings$HeaderAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter$1;->this$0:Lcom/android/settings/Settings$HeaderAdapter;

    # getter for: Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;
    invoke-static {v0}, Lcom/android/settings/Settings$HeaderAdapter;->access$1800(Lcom/android/settings/Settings$HeaderAdapter;)Lcom/android/settings/personalpage/PersonalPageEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->updateSwitch()V

    return-void
.end method
