.class Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mAdvanced:Landroid/widget/LinearLayout;

.field public mButton:Landroid/widget/RadioButton;

.field public mPosition:I

.field public mSummary:Landroid/widget/TextView;

.field public mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;


# direct methods
.method private constructor <init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)V

    return-void
.end method
