.class public final enum Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;
.super Ljava/lang/Enum;
.source "SmartClipNewFileName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndexMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

.field public static final enum DRAGDRAP:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

.field public static final enum FILE:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;->FILE:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    new-instance v0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    const-string v1, "DRAGDRAP"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;->DRAGDRAP:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    sget-object v1, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;->FILE:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;->DRAGDRAP:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;->$VALUES:[Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;
    .locals 1

    const-class v0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;
    .locals 1

    sget-object v0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;->$VALUES:[Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    return-object v0
.end method
