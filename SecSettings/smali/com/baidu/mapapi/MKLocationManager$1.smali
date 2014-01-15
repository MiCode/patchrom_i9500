.class Lcom/baidu/mapapi/MKLocationManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mapapi/MKLocationManager;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/MKLocationManager;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/MKLocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/MKLocationManager$1;->a:Lcom/baidu/mapapi/MKLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager$1;->a:Lcom/baidu/mapapi/MKLocationManager;

    invoke-static {v0}, Lcom/baidu/mapapi/MKLocationManager;->a(Lcom/baidu/mapapi/MKLocationManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager$1;->a:Lcom/baidu/mapapi/MKLocationManager;

    invoke-static {v0}, Lcom/baidu/mapapi/MKLocationManager;->a(Lcom/baidu/mapapi/MKLocationManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager$1;->a:Lcom/baidu/mapapi/MKLocationManager;

    invoke-static {v0}, Lcom/baidu/mapapi/MKLocationManager;->a(Lcom/baidu/mapapi/MKLocationManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager$1;->a:Lcom/baidu/mapapi/MKLocationManager;

    invoke-static {v0}, Lcom/baidu/mapapi/MKLocationManager;->a(Lcom/baidu/mapapi/MKLocationManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
