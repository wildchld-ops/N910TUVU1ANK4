.class public Lcom/android/incallui/callerinfocard/CallerInfoCardConstants;
.super Ljava/lang/Object;
.source "CallerInfoCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;,
        Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Email;,
        Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Logs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
