.class Lcom/android/phone/InCallSoundEQListPreference$4;
.super Ljava/lang/Object;
.source "InCallSoundEQListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallSoundEQListPreference;->showDisableSoundEQPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallSoundEQListPreference;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/phone/InCallSoundEQListPreference;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InCallSoundEQListPreference$4;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    iput p2, p0, Lcom/android/phone/InCallSoundEQListPreference$4;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference$4;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    # getter for: Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/InCallSoundEQListPreference;->access$100(Lcom/android/phone/InCallSoundEQListPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voicecall_eq_list_value"

    iget v2, p0, Lcom/android/phone/InCallSoundEQListPreference$4;->val$value:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference$4;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    # getter for: Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/InCallSoundEQListPreference;->access$100(Lcom/android/phone/InCallSoundEQListPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hearing_revision"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference$4;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-virtual {v0}, Lcom/android/phone/InCallSoundEQListPreference;->updatePreference()V

    return-void
.end method
