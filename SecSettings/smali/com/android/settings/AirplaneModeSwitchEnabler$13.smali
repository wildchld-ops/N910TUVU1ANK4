.class Lcom/android/settings/AirplaneModeSwitchEnabler$13;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirplaneModeSwitchEnabler;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$13;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    iput-boolean p2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$13;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$13;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    # getter for: Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$13;->val$value:Z

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$13;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    iget-boolean v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$13;->val$value:Z

    # invokes: Lcom/android/settings/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$300(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V

    :cond_0
    return-void
.end method
