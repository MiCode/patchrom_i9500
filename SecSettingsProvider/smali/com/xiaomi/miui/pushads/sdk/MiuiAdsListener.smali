.class public interface abstract Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;
.super Ljava/lang/Object;
.source "MiuiAdsListener.java"


# virtual methods
.method public abstract getActionPendingIntent(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)Landroid/app/PendingIntent;
.end method

.method public abstract getClickPendingIntent(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)Landroid/app/PendingIntent;
.end method

.method public abstract getSmallIconID()I
.end method

.method public abstract onBubbleReceived(Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;)V
.end method

.method public abstract onChannelInitialized(JLjava/lang/String;)V
.end method

.method public abstract onNotifyReceived(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)Z
.end method
