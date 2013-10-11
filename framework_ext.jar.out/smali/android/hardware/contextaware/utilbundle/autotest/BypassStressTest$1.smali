.class Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest$1;
.super Ljava/lang/Object;
.source "BypassStressTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest$1;->this$0:Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 59
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 70
    return-void
.end method
