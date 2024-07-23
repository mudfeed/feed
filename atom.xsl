<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <title>
          MudFeed |
          <xsl:value-of select="/atom:feed/atom:title"/>
        </title>
        <meta charset="utf-8"/>
        <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="icon" href="feed.png" />
        <style type="text/css">
          .text-2 { font-size: 8pt; }
          .text-1 { padding-bottom: 0px; }
          .pb-7 { padding-bottom: 20px; }
          .text-8 { padding-top:0px; padding-bottom: 20px; }
          .text-9 { font-size: 12pt; }
        </style>
      </head>
      <body>
        <main class="layout-content">        
          <div type="info">
            <small>This is an Atom feed. Subscribe by copying the URL into your newsreader. Visit <a href="https://aboutfeeds.com">About Feeds</a> to learn more and get started. It’s free.</small>
          </div>
          <div class="py-7">
          <h1 class="flex items-start">
            <!-- https://commons.wikimedia.org/wiki/File:Feed-icon.svg -->
            <a>
              <xsl:attribute name="href">
                <xsl:value-of select="/atom:feed/atom:link[2]/@href"/>
              </xsl:attribute>
              <svg xmlns="http://www.w3.org/2000/svg" version="1.1"
                 class="mr-5"
                 style="flex-shrink: 0; width: 1em; height: 1em;"
                 viewBox="0 0 256 256">
              <defs>
                <linearGradient x1="0.085" y1="0.085" x2="0.915" y2="0.915"
                                id="RSSg">
                  <stop offset="0.0" stop-color="#E3702D"/>
                  <stop offset="0.1071" stop-color="#EA7D31"/>
                  <stop offset="0.3503" stop-color="#F69537"/>
                  <stop offset="0.5" stop-color="#FB9E3A"/>
                  <stop offset="0.7016" stop-color="#EA7C31"/>
                  <stop offset="0.8866" stop-color="#DE642B"/>
                  <stop offset="1.0" stop-color="#D95B29"/>
                </linearGradient>
              </defs>
              <rect width="256" height="256" rx="55" ry="55" x="0" y="0"
                    fill="#CC5D15"/>
              <rect width="246" height="246" rx="50" ry="50" x="5" y="5"
                    fill="#F49C52"/>
              <rect width="236" height="236" rx="47" ry="47" x="10" y="10"
                    fill="url(#RSSg)"/>
              <circle cx="68" cy="189" r="24" fill="#FFF"/>
              <path
                d="M160 213h-34a82 82 0 0 0 -82 -82v-34a116 116 0 0 1 116 116z"
                fill="#FFF"/>
              <path
                d="M184 213A140 140 0 0 0 44 73 V 38a175 175 0 0 1 175 175z"
                fill="#FFF"/>
            </svg>
            </a>
            MudFeed's Weblog
          </h1>
          <!-- h2><a href="http://mudfeed.mooo.com">http://mudfeed.mooo.com</a></h2 -->   
           <a>
            <xsl:attribute name="href">
              <xsl:value-of select="/atom:feed/atom:link[2]/@href"/>
            </xsl:attribute>
            <xsl:value-of select="/atom:feed/atom:link[2]/@href"/>
          </a> 
         
          <!-- p>
            <xsl:value-of select="/atom:feed/atom:subtitle"/>
          </p -->
                   
          <h2>Recent feed posts</h2>
          <div class="text-8">
            <xsl:text>&lt;</xsl:text><a href="mailto:jannis.bloem@gmail.com"><xsl:value-of select="/atom:feed/atom:author/atom:email" /></a><xsl:text>&#160;</xsl:text><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-fingerprint" viewBox="0 0 16 16">
  <path d="M8.06 6.5a.5.5 0 0 1 .5.5v.776a11.5 11.5 0 0 1-.552 3.519l-1.331 4.14a.5.5 0 0 1-.952-.305l1.33-4.141a10.5 10.5 0 0 0 .504-3.213V7a.5.5 0 0 1 .5-.5Z"></path>
  <path d="M6.06 7a2 2 0 1 1 4 0 .5.5 0 1 1-1 0 1 1 0 1 0-2 0v.332q0 .613-.066 1.221A.5.5 0 0 1 6 8.447q.06-.555.06-1.115zm3.509 1a.5.5 0 0 1 .487.513 11.5 11.5 0 0 1-.587 3.339l-1.266 3.8a.5.5 0 0 1-.949-.317l1.267-3.8a10.5 10.5 0 0 0 .535-3.048A.5.5 0 0 1 9.569 8m-3.356 2.115a.5.5 0 0 1 .33.626L5.24 14.939a.5.5 0 1 1-.955-.296l1.303-4.199a.5.5 0 0 1 .625-.329"></path>
  <path d="M4.759 5.833A3.501 3.501 0 0 1 11.559 7a.5.5 0 0 1-1 0 2.5 2.5 0 0 0-4.857-.833.5.5 0 1 1-.943-.334m.3 1.67a.5.5 0 0 1 .449.546 10.7 10.7 0 0 1-.4 2.031l-1.222 4.072a.5.5 0 1 1-.958-.287L4.15 9.793a9.7 9.7 0 0 0 .363-1.842.5.5 0 0 1 .546-.449Zm6 .647a.5.5 0 0 1 .5.5c0 1.28-.213 2.552-.632 3.762l-1.09 3.145a.5.5 0 0 1-.944-.327l1.089-3.145c.382-1.105.578-2.266.578-3.435a.5.5 0 0 1 .5-.5Z"></path>
  <path d="M3.902 4.222a5 5 0 0 1 5.202-2.113.5.5 0 0 1-.208.979 4 4 0 0 0-4.163 1.69.5.5 0 0 1-.831-.556m6.72-.955a.5.5 0 0 1 .705-.052A4.99 4.99 0 0 1 13.059 7v1.5a.5.5 0 1 1-1 0V7a3.99 3.99 0 0 0-1.386-3.028.5.5 0 0 1-.051-.705M3.68 5.842a.5.5 0 0 1 .422.568q-.044.289-.044.59c0 .71-.1 1.417-.298 2.1l-1.14 3.923a.5.5 0 1 1-.96-.279L2.8 8.821A6.5 6.5 0 0 0 3.058 7q0-.375.054-.736a.5.5 0 0 1 .568-.422m8.882 3.66a.5.5 0 0 1 .456.54c-.084 1-.298 1.986-.64 2.934l-.744 2.068a.5.5 0 0 1-.941-.338l.745-2.07a10.5 10.5 0 0 0 .584-2.678.5.5 0 0 1 .54-.456"></path>
  <path d="M4.81 1.37A6.5 6.5 0 0 1 14.56 7a.5.5 0 1 1-1 0 5.5 5.5 0 0 0-8.25-4.765.5.5 0 0 1-.5-.865m-.89 1.257a.5.5 0 0 1 .04.706A5.48 5.48 0 0 0 2.56 7a.5.5 0 0 1-1 0c0-1.664.626-3.184 1.655-4.333a.5.5 0 0 1 .706-.04ZM1.915 8.02a.5.5 0 0 1 .346.616l-.779 2.767a.5.5 0 1 1-.962-.27l.778-2.767a.5.5 0 0 1 .617-.346m12.15.481a.5.5 0 0 1 .49.51c-.03 1.499-.161 3.025-.727 4.533l-.07.187a.5.5 0 0 1-.936-.351l.07-.187c.506-1.35.634-2.74.663-4.202a.5.5 0 0 1 .51-.49"></path>
</svg><a href=""><xsl:attribute name="href"><xsl:value-of select="/atom:feed/atom:link[3]/@href"/></xsl:attribute>0x3F31D84F-pub.asc</a>, (<a href="https://www.linkedin.com/in/jannis-bloemendal/"><xsl:value-of select="/atom:feed/atom:author/atom:uri"/></a>)<xsl:text>&gt;</xsl:text>
          </div>          
          <xsl:for-each select="/atom:feed/atom:entry">
            <div class="post pb-7">
              <xsl:attribute name="id">
                <xsl:value-of select="atom:published"/>
              </xsl:attribute>
              <span class="text-9">&#128279;</span>
              <a class="text-2 text-offset">
                <xsl:attribute name="href">
                  <xsl:value-of select="concat('#', atom:published)"/>
                </xsl:attribute>
                Published on <xsl:value-of select="atom:published" />
              </a>
              <div class="text-1 font-bold">
               <!--
                <a>
                  <xsl:attribute name="href">
                    <xsl:value-of select="atom:link/@href"/>
                  </xsl:attribute>
                  <xsl:value-of select="atom:title"/>
                </a>
                -->
                <xsl:value-of select="atom:title"/>
              </div>
              
              <!-- div class="text-4"><xsl:value-of select="atom:summary"/></div -->
            </div>
          </xsl:for-each>
          </div>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
