.class Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoRejectItem"
.end annotation


# instance fields
.field public checked:I

.field public contact_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public reject_num:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->id:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->defaultName:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$600()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->id:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    iput-object p4, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    return-void
.end method
