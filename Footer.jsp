<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<footer class="bg-yellow-800 bg-opacity-60 w-full h-[70px] text-gray-200 py-3 text-center mt-auto animate-fadeIn">
    <!-- <div class="flex flex-wrap justify-center gap-4 px-5">
        <a class="text-[10px] sm:text-sm hover:text-white font-semibold" href="#">DISCLAIMER</a>
        <a class="text-[10px] sm:text-sm hover:text-white font-semibold" href="#">REIS</a>
        <a class="text-[10px] sm:text-sm hover:text-white font-semibold" href="#">RBS</a>
        <a class="text-[10px] sm:text-sm hover:text-white font-semibold" href="#">ICMS</a>
        <a class="text-[10px] sm:text-sm hover:text-white font-semibold" href="#">TMS</a>
        <a class="text-[10px] sm:text-sm hover:text-white font-semibold" href="#">NGET</a>
        <a class="text-[10px] sm:text-sm hover:text-white font-semibold" href="#">RCT</a>
        <a class="text-[10px] sm:text-sm hover:text-white font-semibold" href="#">WECRS</a>
        <a class="text-[10px] sm:text-sm hover:text-white font-semibold" href="#">FOIS</a>
        <a class="text-[10px] sm:text-sm hover:text-white font-semibold" href="#">NDMA</a>
    </div> -->
    <p class="text-[10px] sm:text-sm mt-2">&copy; <%= java.time.Year.now() %> CRIS. All rights reserved.</p>
</footer>

<style>
    @keyframes fadeIn {
        0% {
            opacity: 0;
            transform: scale(0.95);
        }
        100% {
            opacity: 1;
            transform: scale(1);
        }
    }

    .animate-fadeIn {
        animation: fadeIn 0.6s cubic-bezier(0.4, 0, 0.2, 1) forwards;
    }
</style>
