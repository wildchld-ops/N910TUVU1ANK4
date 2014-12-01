.class Lcom/android/settings/BrightnessPreference$1;
.super Landroid/database/ContentObserver;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/BrightnessPreference$1;->this$0:Lcom/android/settings/BrightnessPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/BrightnessPreference$1;->this$0:Lcom/android/settings/BrightnessPreference;

    const/4 v1, -0x1

    # setter for: Lcom/android/settings/BrightnessPreference;->mCurBrightness:I
    invoke-static {v0, v1}, Lcom/android/settings/BrightnessPreference;->access$002(Lcom/android/settings/BrightnessPreference;I)I

    iget-object v0, p0, Lcom/android/settings/BrightnessPreference$1;->this$0:Lcom/android/settings/BrightnessPreference;

    # invokes: Lcom/android/settings/BrightnessPreference;->onBrightnessChanged()V
    invoke-static {v0}, Lcom/android/settings/BrightnessPreference;->access$100(Lcom/android/settings/BrightnessPreference;)V

    return-void
.end method
