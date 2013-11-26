.class Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLThumbnailListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 9
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 122
    if-nez p2, :cond_0

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 124
    .local v6, itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v6, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 125
    .local v7, command:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v7, :cond_0

    .line 127
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    .line 128
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$600()I

    move-result v3

    int-to-float v4, v3

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$700()I

    move-result v3

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 129
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMute:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setMute(Z)V

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 135
    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v6           #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
