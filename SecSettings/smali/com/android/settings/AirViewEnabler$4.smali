.class Lcom/android/settings/AirViewEnabler$4;
.super Ljava/lang/Object;
.source "AirViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewEnabler;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirViewEnabler$4;->this$0:Lcom/android/settings/AirViewEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirViewEnabler$4;->this$0:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->updateSwitch()V

    return-void
.end method
