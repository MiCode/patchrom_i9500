.class public Lcom/qualcomm/camera/QCParameters;
.super Ljava/lang/Object;
.source "QCParameters.java"

# interfaces
.implements Lcom/qualcomm/snapdragon/util/QCCapabilitiesInterface;


# static fields
.field private static KEY_FRAME_CAPTURE_KEYS:Ljava/lang/String; = null

.field public static final KEY_NUM_SNAPS_PER_SHUTTER:Ljava/lang/String; = "num-snaps-per-shutter"

.field public static final KEY_ZSL_CAMERA_MODE:Ljava/lang/String; = "camera-mode"

.field public static final KEY_ZSL_PREFERENCE_KEY:Ljava/lang/String; = "pref_camera_zsl_key"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "key_frame_capture_keys"

    sput-object v0, Lcom/qualcomm/camera/QCParameters;->KEY_FRAME_CAPTURE_KEYS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapabilities()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 53
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v2, constantFieldBundle:Landroid/os/Bundle;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, cameraParametersList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "KEY_ZSL_CAMERA_MODE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v3, "KEY_ZSL_PREFERENCE_KEY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v3, "KEY_NUM_SNAPS_PER_SHUTTER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v3, Lcom/qualcomm/camera/QCParameters;->KEY_FRAME_CAPTURE_KEYS:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v1, capabilitiesBundle:Landroid/os/Bundle;
    const-string v3, "key_constant_field_values"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    return-object v1
.end method
