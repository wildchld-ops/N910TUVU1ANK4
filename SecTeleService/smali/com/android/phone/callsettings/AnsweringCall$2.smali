.class Lcom/android/phone/callsettings/AnsweringCall$2;
.super Ljava/lang/Object;
.source "AnsweringCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AnsweringCall;->handleVoiceCmd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AnsweringCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AnsweringCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    # getter for: Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/callsettings/AnsweringCall;->access$000(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall$2;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control_incomming_calls"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
