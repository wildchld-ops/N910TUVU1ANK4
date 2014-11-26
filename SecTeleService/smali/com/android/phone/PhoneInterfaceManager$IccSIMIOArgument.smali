.class final Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccSIMIOArgument"
.end annotation


# instance fields
.field public command:I

.field public fileID:I

.field public filepath:Ljava/lang/String;

.field public p1:I

.field public p2:I

.field public p3:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->fileID:I

    iput p2, p0, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->command:I

    iput p3, p0, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p1:I

    iput p4, p0, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p2:I

    iput p5, p0, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p3:I

    iput-object p6, p0, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->filepath:Ljava/lang/String;

    return-void
.end method
