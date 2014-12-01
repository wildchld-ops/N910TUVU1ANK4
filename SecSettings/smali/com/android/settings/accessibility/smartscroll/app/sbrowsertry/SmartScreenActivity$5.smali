.class Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$5;
.super Ljava/lang/Object;
.source "SmartScreenActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$5;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$5;->this$0:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->setSensitivity(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
