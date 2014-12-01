.class Lcom/android/settings/fingerprint/FingerprintDisclaimer$1;
.super Ljava/lang/Object;
.source "FingerprintDisclaimer.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintDisclaimer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimer;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintDisclaimer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer$1;->this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer$1;->this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimer;

    # getter for: Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mDoNotShow:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->access$000(Lcom/android/settings/fingerprint/FingerprintDisclaimer;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->playSoundEffect(I)V

    return-void
.end method
