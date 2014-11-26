.class Lcom/android/phone/callsettings/LGTPhotoRingRejectList$10;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->softkeyRightRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$10;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$10;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1602(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$10;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->makeScreen()V
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    return-void
.end method
